//
//  RecipeTableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Kadell on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {

    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

//        if let view = Bundle.main.loadNibNamed("RecipeTableViewCell", owner: self, options: nil)?.first as? UIView {
//            
//            self.addSubview(view)
//            view.frame = self.bounds
//        }

    }
    
}
