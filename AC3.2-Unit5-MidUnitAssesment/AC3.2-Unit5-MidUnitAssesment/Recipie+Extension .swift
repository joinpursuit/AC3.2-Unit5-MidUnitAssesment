//
//  Recipie+Extension .swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Tom Seymour on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipie {
    func populate(from dict: [String: Any], with searchWord: String) {
        if let title = dict["title"] as? String,
            let url = dict["href"] as? String,
            let ingredients = dict["ingredients"] as? String {
            self.title = title
            self.url = url
            self.ingredients = ingredients
        }
        let thumbnail = dict["thumbnail"] as? String ?? ""
        self.thumbnail = thumbnail
        self.searchWord = searchWord
    }
}
