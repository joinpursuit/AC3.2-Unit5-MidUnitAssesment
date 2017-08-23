//
//  Recipe+JSON.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Ilmira Estil on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipe {
    func populate(from dict: [String: Any]) {
        if let ingredients = dict["ingredients"] as? String,
            let title = dict["title"] as? String,
            let url = dict["href"] as? String {
            self.ingredients = ingredients
            self.title = title
            self.url = url
        }
    }
}
