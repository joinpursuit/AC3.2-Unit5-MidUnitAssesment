//
//  extension_Recipes.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Miti Shah on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipes {
    func populate(from dict: [String:Any]) {
        if let title = dict["title"] as? String,
            let href = dict["href"] as? String,
            let ingredients = dict["ingredients"] as? String,
            let thumbnail = dict["thumbnail"] as? String {
            
            self.title = title
            self.href = href
            self.ingredients = ingredients
            self.thumbnail = thumbnail
            
        }
    }
}
