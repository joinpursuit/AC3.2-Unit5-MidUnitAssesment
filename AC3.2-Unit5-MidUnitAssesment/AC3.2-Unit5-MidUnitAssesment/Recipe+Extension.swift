//
//  Recipe+Extension.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by C4Q on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipe {
    func populate (with dict: [String: Any]) {
        guard let title = dict["title"] as? String,
            let ingredients = dict["ingredients"] as? String,
            let href = dict["href"] as? String else { return }
        var thumbnail: String?
        if dict["thumbnail"] is NSNull {
            thumbnail = nil
        } else {
            thumbnail = dict["thumbnail"] as? String
        }
        self.title = title
        self.href = href
        self.ingredients = ingredients
        self.thumbnail = thumbnail
    }
}
