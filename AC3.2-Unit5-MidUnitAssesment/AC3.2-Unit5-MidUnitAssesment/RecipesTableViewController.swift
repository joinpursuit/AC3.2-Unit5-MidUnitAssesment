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
    var cellTitle = "coreData"
   
    // Comment #1
    // fix the declaration of fetchedResultsController
    var fetchedResultsController: NSFetchedResultsController<Recipes>!

    var mainContext: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeFetchedResultsController()
 tableView.register(UINib(nibName: "RecipesTableViewCell", bundle: nil), forCellReuseIdentifier: cellTitle)
        self.title = titleForCell
        self.getData()
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
                        pc.performBackgroundTask { (context: NSManagedObjectContext) in
                            context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
       
                            // Comment #2
                            // insert your core data objects here
                            for rec in records {
                                let record = NSEntityDescription.insertNewObject(forEntityName: "Recipes", into: context) as! Recipes
                                record.populate(from: rec)
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
        // #warning Incomplete implementation, return the number of sections
        guard let sections = fetchedResultsController.sections else { return 0 }
        return sections.count
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        guard let sections = fetchedResultsController.sections else { return 0 }
        let sectionInfo = sections[section]
        
        return sectionInfo.numberOfObjects
    }


  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellTitle, for: indexPath) as! RecipesTableViewCell
        
        let recipeChosen = fetchedResultsController.object(at: indexPath)
        
        cell.titleLabel.text = recipeChosen.title
        cell.ingredientsLabel.text = "Ingredients: \(recipeChosen.ingredients!)"
        cell.urlLabel.text = recipeChosen.href
        
        return cell
    }
   
    
    // Comment #3
    // this function is based partly on our projects and partly 
    // on the Coffee Log app. It will require some customization
    // to this project.
    func initializeFetchedResultsController() {
        let request: NSFetchRequest<Recipes> = Recipes.fetchRequest()
        let sort = NSSortDescriptor(key: "title", ascending: false)
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
//****** Never learned NSPredicate
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
