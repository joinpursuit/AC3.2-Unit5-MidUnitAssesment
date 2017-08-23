//
//  Recipes+JSON.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Annie Tung on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

/*{
 "title": "Danish Peppernut Christmas Cookies (Pebernodder)",
 "href": "http://allrecipes.com/Recipe/Danish-Peppernut-Christmas-Cookies-Pebernodder/Detail.aspx",
 "ingredients": "butter, cardamom, cinnamon, cloves, eggs, flour, nutmeg, salt, sugar",
 "thumbnail": "http://img.recipepuppy.com/19913.jpg"
 }*/

extension Recipes {
    func populate(from dict: [String:Any]) {
        if let title = dict["title"] as? String,
        let href = dict["href"] as? String,
        let ingredients = dict["ingredients"] as? String,
            let thumbnail = dict["ingredients"] as? String {
            self.title = title
            self.href = href
            self.ingredients = ingredients
            self.thumbnail = thumbnail
        }
    }
}
