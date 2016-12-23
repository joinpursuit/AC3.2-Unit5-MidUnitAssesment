//
//  Recipe+Extension.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Sabrina Ip on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipe {
    func populate(from dict: [String:Any]) {
        
        if let title = dict["title"] as? String,
            let href = dict["href"] as? String,
            let ingredients = dict["ingredients"] as? String {
            self.title = title
            self.href = href
            self.ingredients = ingredients
        }
    }
}
