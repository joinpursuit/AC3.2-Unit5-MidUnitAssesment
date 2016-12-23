//
//  Recipies+JSON.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Edward Anchundia on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipies {
    func populate(from recipieDict: [String: Any]) {
        guard let title = recipieDict["title"] as? String,
            let href = recipieDict["recipieDict"] as? String,
            let ingredients = recipieDict["ingredients"] as? String,
            let thumbnail = recipieDict["thumbnail"] as? String else { return }
        self.title = title
        self.href = href
        self.ingredients = ingredients
        self.thumbnail = thumbnail
    }
}
