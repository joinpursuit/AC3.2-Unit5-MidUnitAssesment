//
//  RecipeTableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by C4Q on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
    @IBOutlet weak var ingredientsLabel: UILabel!

    @IBOutlet weak var thumbNail: UIImageView!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
