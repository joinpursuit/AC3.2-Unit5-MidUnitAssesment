//
//  Food+Populate .swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Marty Avedon on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Food {
    func populateFrom(dict: [String:Any]) {
        guard let recipeTitle = dict["recipeTitle"] as? String,
            let href = dict["href"] as? String,
            let thumbnail = dict["thumbnail"] as? String,
            let ingredients = dict["ingredients"] as? String
        else { return }
        
        self.recipeTitle = recipeTitle
        self.href = href
        self.thumbnail = thumbnail
        self.ingredients = ingredients
    }

}
