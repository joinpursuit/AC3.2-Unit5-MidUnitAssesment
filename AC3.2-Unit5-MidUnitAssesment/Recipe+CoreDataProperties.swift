//
//  Recipe+CoreDataProperties.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Thinley Dorjee on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation
import CoreData


extension Recipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe");
    }

    @NSManaged public var title: String?
    @NSManaged public var ingredients: String?
    @NSManaged public var href: String?

}
