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
    var reuseIdentifier = "reuseID"
   
    // Comment #1
    // fix the declaration of fetchedResultsController
    var fetchedResultsController: NSFetchedResultsController<Recipe>!

    var mainContext: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(UINib(nibName:"RecipeTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifier)
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 150.0

        self.title = titleForCell
        
        initializeFetchedResultsController()
        
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
                         let request = NSFetchRequest<Recipe>(entityName: "Recipe")
                        pc.performBackgroundTask { (context: NSManagedObjectContext) in
                            context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
       
                            for rec in records {
                                let recipe = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: context) as! Recipe
                                recipe.populate(from: rec)
                            }
                            
                            do {
                                try context.save()
                            }
                            catch let error {
                                print(error)
                            }
                            
                            do {
                                let recipes = try self.mainContext.fetch(request)
                                
                                for el in recipes {
                                    print("\(el.title)")
                                }
                            }
                            catch {
                                print("error fetching")
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
        // #warning Incomplete implementation, return the number of sections
        guard let sections = fetchedResultsController.sections else {
            print("No sections in fetchedResultsController")
            return 0
        }
        print(sections.count)
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        guard let sections = fetchedResultsController.sections else {
            fatalError("No sections in fetchedResultsController")
        }
        let sectionInfo = sections[section]
        return sectionInfo.numberOfObjects
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! RecipeTableViewCell
        
        let recipe = fetchedResultsController.object(at: indexPath)
        if let title = recipe.title {
        cell.title.text = title
        }
        if let link = recipe.href {
            cell.link.text = link
        }

        return cell
    }
    
    
    // Comment #3
    // this function is based partly on our projects and partly 
    // on the Coffee Log app. It will require some customization
    // to this project.
    func initializeFetchedResultsController() {
        let request: NSFetchRequest<Recipe> = Recipe.fetchRequest()
        let sort = NSSortDescriptor(key: "title", ascending: true)
        request.sortDescriptors = [sort]
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: mainContext, sectionNameKeyPath: nil, cacheName: nil)
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
}
