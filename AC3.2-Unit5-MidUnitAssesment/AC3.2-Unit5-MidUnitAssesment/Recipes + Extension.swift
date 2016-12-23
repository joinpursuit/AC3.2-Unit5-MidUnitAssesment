//
//  Recipes + Extension.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Kadell on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipes {

    func populate(from elementDict: [String:Any]) {
        
        guard let title = elementDict["title"] as? String ,
            let url = elementDict["href"] as? String,
            let ingredients = elementDict["ingredients"] as? String else { return }
        
        self.title = title
        href = url
        self.ingredients = ingredients

    }

}
