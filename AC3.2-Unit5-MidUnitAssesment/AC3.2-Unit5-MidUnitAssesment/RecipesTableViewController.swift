//
//  RecipesTableViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jason Gresh on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit
import CoreData

let reuseIdentifier = "CELL"

class RecipesTableViewController: UITableViewController, CellTitled, NSFetchedResultsControllerDelegate, UISearchBarDelegate, UITextFieldDelegate {
    var titleForCell = "Core Data"
    
    // Comment #1
    // fix the declaration of fetchedResultsController
    var fetchedResultsController: NSFetchedResultsController<Entry>!

    var mainContext: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = titleForCell
        
        self.tableView.register(UINib(nibName: "RecipeTableViewCell", bundle: Bundle.main), forCellReuseIdentifier: reuseIdentifier)
        getData()
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
                        pc.performBackgroundTask { (context: NSManagedObjectContext) in
                            context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
       
                            // Comment #2
                            // insert your core data objects here
                            
                            for item in records {
                                // now it goes in the database
                                let entry = NSEntityDescription.insertNewObject(forEntityName: "Entry", into: self.mainContext) as! Entry
                                entry.populate(from: item)
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
        guard let sections = fetchedResultsController.sections else {
            print("No sections in fetchedResultsController")
            return 0
        }

        return sections.count
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
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! RecipeTableViewCell

        let cellInfo = fetchedResultsController.object(at: indexPath)

        cell.titleLabel.text = cellInfo.title
        cell.hrefLabel.text = cellInfo.href
        cell.ingredientsLabel.text = cellInfo.ingredients
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    
    // Comment #3
    // this function is based partly on our projects and partly 
    // on the Coffee Log app. It will require some customization
    // to this project.
    func initializeFetchedResultsController(predi: String? = nil) {
        let request: NSFetchRequest<Entry> = Entry.fetchRequest()
        let sort = NSSortDescriptor(key: "title", ascending: true)
        request.sortDescriptors = [sort]
        if let str = predi{
            let myPre = NSPredicate(format: "%K LIKE %@", "title", "*\(str)*")
            request.predicate = myPre
        }
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request, managedObjectContext: mainContext, sectionNameKeyPath: nil, cacheName: nil)
        fetchedResultsController.delegate = self
        
        do {
            try fetchedResultsController.performFetch()
        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }
    
//    func deleteAllData(entity: String){
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Car")
//        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
//        
//        fetchedResultsController = NSFetchedResultsController(fetchRequest: deleteRequest, managedObjectContext: mainContext, sectionNameKeyPath: nil, cacheName: nil)
//        do {
//            try fetchedResultsController.performFetch()
//            //myPersistentStoreCoordinator.executeRequest(deleteRequest, withContext: mainContext)
//        } catch{
//            print(error)
//        }
//    }
    
    // MARK: - Search Bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // Comment #4
        self.initializeFetchedResultsController(predi: searchText)
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
