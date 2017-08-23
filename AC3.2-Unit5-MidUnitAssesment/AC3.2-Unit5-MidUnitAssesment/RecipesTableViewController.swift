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
   
    let cellIdentifier = "recipeCellIdentifier"
    
    let cell = UITableViewCell()
    
    // Comment #1
    // fix the declaration of fetchedResultsController
    var fetchedResultsController: NSFetchedResultsController<Recipe>!

    var mainContext: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = titleForCell
        initializeFetchedResultsController()
        getData()
        
        tableView.register(UINib(nibName: "RecipeTableViewCell", bundle: nil), forCellReuseIdentifier: self.cellIdentifier)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 50
        
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "defaultCell")
        //tableView.register(cell.self, forCellReuseIdentifier: "defaultCell")
        //tableView.register(RecipeTableViewCell.self, forCellReuseIdentifier: "cell")
        
        
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
                dump(validData)
                if let jsonData = try? JSONSerialization.jsonObject(with: validData, options:[]) {
                    if let wholeDict = jsonData as? [String:Any],
                        let records = wholeDict["results"] as? [[String:Any]] {
                        dump(records)
                        self.mainContext.performAndWait {
                            for record in records {
                                guard let title  = record["title"] as? String else { continue }
                                let fetchRequest = NSFetchRequest<Recipe>(entityName: "Recipe")
                                let predicate = NSPredicate(format: "title = %@", title)
                                fetchRequest.predicate = predicate
                                if let recipeArr = try? fetchRequest.execute(){
                                    if let recipe = recipeArr.last{
                                        recipe.populate(from: record)
                                    } else {
                                        let recipe = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: self.mainContext) as! Recipe
                                        recipe.populate(from: record)
                                    }

                                }
                                
                                //let recipeInfo = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: self.mainContext) as! Recipe
                                //recipeInfo.populate(from: recipe)
                            }
                            do {
                                try self.mainContext.save()
                                self.mainContext.parent?.performAndWait {
                                    do {
                                        try self.mainContext.parent?.save()
                                    }
                                    catch {
                                        fatalError("Failure to save context:\(error)")
                                    }
                                }
                            }
                        
                        //let appDelegate = UIApplication.shared.delegate as! AppDelegate
                        //let pc = appDelegate.persistentContainer
                        //pc.performBackgroundTask { (context: NSManagedObjectContext) in
                            //context.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
       
                            // Comment #2
                            // insert your core data objects here
                            //context.performAndWait {
                                //for recipe in records {
                                    //let recipeInfo = NSEntityDescription.insertNewObject(forEntityName: "Recipe", into: context) as! Recipe
                                    //recipeInfo.populate(from: recipe)
                                //}
                            //}
                            
                            //do {
                            //    try context.save()
                            //    context.parent?.performAndWait {
                            //        do {
                            //            try context.parent?.save()
                            //        }
                            //        catch {
                            //            fatalError("Failure to save context:\(error)")
                            //        }
                            //    }
                            //}
                            catch let error {
                                print(error)
                            }
                            
                            DispatchQueue.main.async {
                                //self.initializeFetchedResultsController()
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
            print(sections.count)
            return sections.count
        }
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let sections = fetchedResultsController.sections {
            let info = sections[section]
            print(info.numberOfObjects)
            return info.numberOfObjects
        }
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath) as! RecipeTableViewCell
        
        let recipe = self.fetchedResultsController.object(at: indexPath)
        
        cell.titleLabel.text = recipe.title!
        cell.ingredientsLabel.text = recipe.ingredients!
        cell.linkLabel.text = recipe.href!
        
        return cell
//        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
//
//        let recipe = self.fetchedResultsController.object(at: indexPath)
//
//        cell.textLabel?.text = recipe.title!
//        cell.detailTextLabel?.text = recipe.ingredients!
//
//        return cell
    }

    
    // Comment #3
    // this function is based partly on our projects and partly 
    // on the Coffee Log app. It will require some customization
    // to this project.
    func initializeFetchedResultsController(with search:String = "") {
        let request: NSFetchRequest<Recipe> = Recipe.fetchRequest()
        let sort = NSSortDescriptor(key: "title", ascending: true)
        request.sortDescriptors = [sort]
        let predicate = NSPredicate(format: "ingredients LIKE '*\(search.lowercased())?*'")
        request.predicate = predicate
        
        fetchedResultsController = NSFetchedResultsController(fetchRequest: request,
                                                              managedObjectContext: mainContext,
                                                              sectionNameKeyPath: nil,
                                                              cacheName: nil)
        fetchedResultsController.delegate = self
        
        do {
            try fetchedResultsController.performFetch()
            let rescipes = try mainContext.fetch(request)
            for rescipe in rescipes {
                print("\(rescipe.title) \(rescipe.ingredients) \(rescipe.href)")
            }

        } catch {
            fatalError("Failed to initialize FetchedResultsController: \(error)")
        }
    }
    
    // MARK: - Search Bar
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        // Comment #4
        self.initializeFetchedResultsController(with: searchText)
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
    
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
                    didChange sectionInfo: NSFetchedResultsSectionInfo,
                    atSectionIndex sectionIndex: Int,
                    for type: NSFetchedResultsChangeType) {
        switch type {
        case .insert:
            tableView.insertSections(IndexSet(integer: sectionIndex), with: .fade)
        case .update:
            tableView.reloadSections(IndexSet(integer: sectionIndex), with: .automatic)
        case .delete:
            tableView.deleteSections(IndexSet(integer: sectionIndex), with: .fade)
        case .move:
            break
        }
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
                    didChange anObject: Any,
                    at indexPath: IndexPath?,
                    for type: NSFetchedResultsChangeType,
                    newIndexPath: IndexPath?) {
        switch type {
        case .insert:
            tableView.insertRows(at: [newIndexPath!], with: .automatic)
        case .delete:
            tableView.deleteRows(at: [indexPath!], with: .automatic)
        case .update:
            tableView.reloadRows(at: [indexPath!], with: .automatic)
        case .move:
            tableView.moveRow(at: indexPath!, to: newIndexPath!)
        }
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
}
