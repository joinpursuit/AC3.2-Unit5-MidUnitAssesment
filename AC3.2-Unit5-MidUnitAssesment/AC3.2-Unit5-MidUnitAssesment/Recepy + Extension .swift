//
//  Recepy + Extension .swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Cris on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recepy {
    func populate(from Dict: [String : Any]) {
        guard let name = Dict["title"] as? String,
            let url = Dict["href"] as? String,
            let ingredients = Dict["ingredients"] as? String,
            let thumbnailURlString = Dict["thumbnail"] as? String else  { return }
        
        self.ingredients = ingredients
        self.name = name
        self.thumbnailURLString = thumbnailURlString
        self.urlString = url
        
    }
}

/*
 "title": "Danish Peppernut Christmas Cookies (Pebernodder)",
 "href": "http://allrecipes.com/Recipe/Danish-Peppernut-Christmas-Cookies-Pebernodder/Detail.aspx",
 "ingredients": "butter, cardamom, cinnamon, cloves, eggs, flour, nutmeg, salt, sugar",
 "thumbnail": "http://img.recipepuppy.com/19913.jpg"
 }
 */
