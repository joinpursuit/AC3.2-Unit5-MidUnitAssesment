//
//  RecipesTableViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jason Gresh on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit
import CoreData

class RecipesTableViewController: UITableViewController, CellTitled, NSFetchedResultsControllerDelegate, UISearchBarDelegate, UITextFieldDelegate {
    
    var titleForCell = "Core Data"
    var recipes = [Recipes]()
    var fetchedResultsController: NSFetchedResultsController<Recipes>!
    var mainContext: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeFetchedResultsController()
        getData()
        self.title = titleForCell
        tableView.register(UINib(nibName: "RecipesTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "RecipesTableViewCell")
        self.tableView.rowHeight = 100
        
        ///TEXTFIELD
        // entering text in the textField in the Navigation Bar collects more recipe results
        // and should insert them into Core Data
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        self.navigationItem.titleView = textField
        textField.delegate = self
        
        ///SEARCHBAR
        // this should filter the results from core data without any network call
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        self.tableView.tableHeaderView = searchBar
        searchBar.delegate = self
    }
    
    // get http://www.recipepuppy.com/api/?q=cookies by default
    func getData(search: String = "cookies") {
        APIRequestManager.manager.getData(endPoint: "http://www.recipepuppy.com/api/?q=\(search)")  { (data: Data?) in
            if let validData = data {
                if let jsonData = try? JSONSerialization.jsonObject(with: validData, options:[]) {
                    if let wholeDict = jsonData as? [String:Any],
                        let records = wholeDict["results"] as? [[String:Any]] {
                        
                        let appDelegate = UIApplication.shared.delegate as! AppDelegate
                        let pc = appDelegate.persistentContainer
                        pc.performBackgroundTask { (context: NSManagedObjectContext) in
                            context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy

                            for record in records {
                                if let recipe = NSEntityDescription.insertNewObject(forEntityName: "Recipes", into: context) as? Recipes {
                                    recipe.populate(from: record)
                                }
                            }
                            do {
                                try context.save()
                            }
                            catch let error {
                                print(error)
                            }
                            
                            DispatchQueue.main.async {
                                self.initializeFetchedResultsController()
                                self.tableView.reloadData()
                            }
                        }
                    }
                }
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if let sections = fetchedResultsController.sections {
            return sections.count
        }
        print("Error loading numberOfSections")
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let sections = fetchedResultsController.sections {
            let sectionInfo: NSFetchedResultsSectionInfo = sections[section]
            return sectionInfo.numberOfObjects
        }
        print("Error loading numberOfRowsInSection")
        
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipesTableViewCell", for: indexPath) as! RecipesTableViewCell
        
        let object = fetchedResultsController.object(at: indexPath)
        cell.titleLabel?.text = object.title
        cell.ingredientsLabel?.text = object.ingredients
        cell.hrefLabel?.text = object.href
        
        return cell
    }
    
    func initializeFetchedResultsController() {
        
        let request: NSFetchRequest<Recipes> = Recipes.fetchRequest()//(entityName: "Recipes")
        
        let predicate = NSPredicate(format: "title >= %@", "A")
        request.predicate = predicate
        
        let sort = NSSortDescriptor(key: "title", ascending: true)
        request.sortDescriptors = [sort]
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: self.mainContext, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultsController.delegate = self
        
        do {
            try fetchedResultsController.performFetch()
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }
    
    // MARK: - Search Bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // Comment #4
        self.initializeFetchedResultsController(/* you will need to re-init this with search/filter text*/)
        self.tableView.reloadData()
    }
    // predicate search
    func applyPredicate(search: String) {
        let predicate = NSPredicate(format:"title contains[c] %@ OR ingredients contains[c]", search, search)
        
        self.recipes = (fetchedResultsController.fetchedObjects?.filter { predicate.evaluate(with: $0) })!
        self.tableView.reloadData()
    }
    
    // MARK: - Text Field
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let search = textField.text {
            self.getData(search: search)
            if mainContext.hasChanges {
                do {
                    try mainContext.save()
                    self.tableView.reloadData()
                } catch {
                    print("Error searching for new data")
                }
            }
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let search = textField.text {
            self.getData(search: search)
            if mainContext.hasChanges {
                do {
                    try mainContext.save()
                    self.tableView.reloadData()
                } catch {
                    print("Error searching for new data")
                }
            }
        }
        return true
    }
}
