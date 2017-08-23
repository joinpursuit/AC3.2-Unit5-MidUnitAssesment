//
//  Recipe+JSON.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Marcel Chaucer on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation
import CoreData

extension Recipe {
    func populate(from recipeDict: [String:Any]) {
            let title = recipeDict["title"] as? String ?? ""
            let webSite = recipeDict["href"] as? String ?? ""
            let ingredients = recipeDict["ingredients"] as? String ?? ""
            let thumbNail = recipeDict["thumbnail"] as? String ?? ""
        
        self.title = title
        self.webSite = webSite
        self.ingredients = ingredients
        self.thumbNail = thumbNail
    }
}
