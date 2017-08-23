//
//  RecipesTableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Madushani Lekam Wasam Liyanage on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
