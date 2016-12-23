//
//  Entry+Extension.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Harichandan Singh on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipe {
    func populate(from dict: [String:Any]) {
        if let title = dict["title"] as? String,
            let ingredients = dict["ingredients"] as? String,
            let href = dict["href"] as? String {
            
            self.title = title
            self.ingredients = ingredients
            self.href = href
        }
        
        let thumbnail = dict["thumbnail"] as? String ?? "Not Available"
        self.thumbnail = thumbnail
        
    }
}
