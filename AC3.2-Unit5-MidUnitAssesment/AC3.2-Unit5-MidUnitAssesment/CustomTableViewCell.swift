//
//  CustomTableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Marty Avedon on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var recipeTitle: UILabel!
    @IBOutlet weak var ingredients: UILabel!
    @IBOutlet weak var href: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
