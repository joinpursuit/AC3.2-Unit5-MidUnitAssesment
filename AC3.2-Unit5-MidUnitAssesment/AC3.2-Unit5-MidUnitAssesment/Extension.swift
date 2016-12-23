//
//  Extension.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Thinley Dorjee on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipe {
    func populate(from dict: [String:Any]) {
        if let title = dict["title"] as? String,
            let section = dict["ingredients"] as? String,
            let abstract = dict["href"] as? String {
            self.title = title
            self.ingredients = section
            self.href = abstract
        }
    }
}
