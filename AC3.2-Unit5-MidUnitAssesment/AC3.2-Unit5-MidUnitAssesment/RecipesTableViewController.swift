//
//  RecipesTableViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jason Gresh on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit
import CoreData
private let reuseIdentifier = "RecipeCell"

class RecipesTableViewController: UITableViewController, CellTitled, NSFetchedResultsControllerDelegate, UISearchBarDelegate, UITextFieldDelegate {
    var titleForCell = "Core Data"
   
    
    // Comment #1
    // fix the declaration of fetchedResultsController
    var fetchedResultsController: NSFetchedResultsController<Recipes>!

    var mainContext: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        getData()
        initializeFetchedResultsController()
        self.title = titleForCell
        
        self.tableView!.register(UINib(nibName:"RecipeTableViewCell", bundle:nil), forCellReuseIdentifier: reuseIdentifier)
        

        
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
                            for recipeObject in records {
                                let recipe = NSEntityDescription.insertNewObject(forEntityName:"Recipes", into: context ) as! Recipes
                                recipe.populate(from: recipeObject)
                                print(recipe)

                            }
                            
                            
                            do {
                                try context.save()
                            }
                            catch let error {
                                print(error)
                            }
                            
                            DispatchQueue.main.async {
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
    return 0
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let sections = fetchedResultsController.sections else {
            fatalError("No sections in fetchedResultsController")
        }
        let sectionInfo = sections[section]
        return sectionInfo.numberOfObjects
      
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! RecipeTableViewCell

        let recipe = fetchedResultsController.object(at: indexPath)
        cell.recipeNameLabel.text = recipe.title
//        cell.urlLabel.text = recipe.href
//        cell.ingredientsLabel.text = recipe.ingredients

        return cell
    }
    
    // Comment #3
    // this function is based partly on our projects and partly
    // on the Coffee Log app. It will require some customization
    // to this project.
    func initializeFetchedResultsController() {
        //        let request: NSFetchRequest<Recipes> = Recipes.fetchRequest()
        let request = NSFetchRequest<Recipes>(entityName: "Recipes")
        let sort = NSSortDescriptor(key: "title", ascending: true)
        request.sortDescriptors = [sort]
        
        
            let predicate = NSPredicate(format: "section == %@")
            request.predicate = predicate
        

        
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
