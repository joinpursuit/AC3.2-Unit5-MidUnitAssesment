//
//  Recipe+JSON.swift
//  AC3.2-Unit5-MidUnitAssessment
//
//  Created by Eric Chang on 12/23/16.
//  Copyright © 2016 Eric Chang. All rights reserved.
//

import Foundation

extension Recipe {
    func populate(from elementDict: [String:Any]) {
        
        guard let title = elementDict["title"] as? String,
            let url = elementDict["href"] as? String,
            let ingredients = elementDict["ingredients"] as? String
            else { return }
        
        self.title = title
        self.url = url
        self.ingredients = ingredients
    }
}


/*
 do {
 let els = try moc.fetch(request)
 
 for el in els {
 print("\(el.group) \(el.number) \(el.symbol)")
 }
 }
 catch {
 print("error fetching")
 }
 */
 
