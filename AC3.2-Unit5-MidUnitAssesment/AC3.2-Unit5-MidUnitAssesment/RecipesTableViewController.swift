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
    
    // Comment #1
    // fix the declaration of fetchedResultsController
    //var fetchedResultsController: NSFetchedResultsController<Entry>!
    var fetchedResultsController: NSFetchedResultsController<Recipe>!
    
    var mainContext: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        initializeFetchedResultsController()
        self.title = titleForCell
        // entering text in the textField in the Navigation Bar collects more recipe results
        // and should insert them into Core Data
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        self.navigationItem.titleView = textField
        textField.delegate = self
        // this should filter the results from core data without any network call
        let searchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        self.tableView.tableHeaderView = searchBar
        searchBar.delegate = self
        
        self.tableView.register(UINib(nibName: "RecipeTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: "RecipeCell")
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
                            
                            // Comment #2
                            // insert your core data objects here
                            for mom in records {
                                
                                let element = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: context) as! Recipe
                                element.populate(from: mom)
                            }
                            do {
                                try context.save()
                                print("??\n\n\n\n??")
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
        else {
            print("No sections in fetchedResultsController")
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sections = fetchedResultsController.sections else {
            print("No sections in fetchedResultsController")
            return 0
        }
        let sectionInfo = sections[section]
        
        return sectionInfo.numberOfObjects
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath) as! RecipeTableViewCell
        self.tableView.rowHeight = 100.0
        
        let recipe = fetchedResultsController.object(at: indexPath)
        cell.RecipeView.titleLabel.text = recipe.title
        cell.RecipeView.ingredientsLabel.text = recipe.ingredients
        cell.RecipeView.urlLabel.text = recipe.url
        
        return cell
    }
    
    
    // Comment #3
    // this function is based partly on our projects and partly
    // on the Coffee Log app. It will require some customization
    // to this project.
    //    let groupSort = NSSortDescriptor(key: "group", ascending: true)
    //    let numberSort = NSSortDescriptor(key: "number", ascending: true)
    //    let predicate = NSPredicate(format: "group <= %d", 18)
    //    request.sortDescriptors = [groupSort, numberSort]
    //    request.predicate = predicate
    
    
    func initializeFetchedResultsController() {
        let request: NSFetchRequest<Recipe> = Recipe.fetchRequest()
        let sort = NSSortDescriptor(key: "title", ascending: true)
        request.sortDescriptors = [sort]
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: mainContext, sectionNameKeyPath: "title", cacheName: nil)
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
        self.predicateSearch(search: searchText)
        self.tableView.reloadData()
    }
    
    // MARK: - Text Field
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let search = textField.text {
            self.getData(search: search)
            self.tableView.reloadData()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let search = textField.text {
            self.getData(search: search)
            self.tableView.reloadData()
        }
        return true
    }
    
    func predicateSearch(search: String) {
        let request: NSFetchRequest<Recipe> = Recipe.fetchRequest()
        let sort = NSSortDescriptor(key: "title", ascending: true)
        let predicate = NSPredicate(format: "%K LIKE %@", "title", "*\(search)*")
        request.sortDescriptors = [sort]
        request.predicate = predicate
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: mainContext, sectionNameKeyPath: "title", cacheName: nil)
        fetchedResultsController.delegate = self
        
        do {
            try fetchedResultsController.performFetch()
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }

}
