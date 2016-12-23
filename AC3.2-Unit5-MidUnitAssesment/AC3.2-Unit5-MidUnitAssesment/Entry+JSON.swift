//
//  Entry+JSON.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jermaine Kelly on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Entry{
    func populate(with dictionary: [String:Any]){
        if let title = dictionary["title"] as? String,
            let href = dictionary["href"] as? String,
            let ingredients = dictionary["ingredients"] as? String,
            let thumb = dictionary["thumbnail"] as? String{
            
            self.title = title
            self.href = href
            self.ingredients = ingredients
            self.thumbnail = thumb
        
        }
    }
}
