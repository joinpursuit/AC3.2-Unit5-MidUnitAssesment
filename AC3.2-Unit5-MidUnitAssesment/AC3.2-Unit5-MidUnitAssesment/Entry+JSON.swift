//
//  Entry+JSON.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Victor Zhong on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation


extension Entry {
    func populate(from entryDict:[String:Any]) {
        
        guard let title = entryDict["title"] as? String,
            let href = entryDict["href"] as? String,
            let ingredients = entryDict["ingredients"] as? String else { return }
        
        if let thumbnail = entryDict["thumbnail"] as? String {
            self.thumbnail = thumbnail
        } else {
            self.thumbnail = "N/A"
        }
        
        self.title = title
        self.href = href
        self.ingredients = ingredients        
    }
}
