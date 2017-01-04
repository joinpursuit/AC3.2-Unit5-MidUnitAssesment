//
//  Recipe+JSON.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jason Gresh on 1/3/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation

extension Recipe {
    func populate(with dict: [String:Any]) {
        if let title = dict["title"] as? String,
            let href = dict["href"] as? String,
            let ingredients = dict["ingredients"] as? String{
            self.title = title
            self.href = href
            self.ingredients = ingredients
        }
    }
}
