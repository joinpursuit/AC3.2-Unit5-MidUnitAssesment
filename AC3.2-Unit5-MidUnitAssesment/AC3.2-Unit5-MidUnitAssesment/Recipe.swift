//
//  Recipe.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Amber Spadafora on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipe {
    func populate(from dict: [String:Any]) {
        if let href = dict["href"] as? String,
            let image = dict["thumbnail"] as? String,
            let title = dict["title"] as? String,
            let ingredients = dict["ingredients"] as? String {
            
            self.href = href
            self.title = title
            self.image = image
            self.ingredients = ingredients
            
        }
    }
}
