//
//  RecipesTableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jermaine Kelly on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipesTableViewCell: UITableViewCell {

    static let CellIdentifier = "CellIdentifier"
    lazy var recipeView: RecipeView = RecipeView()
    var entry: Entry?{
        didSet{
            recipeView.titleLabel.text = entry?.title ?? ""
            recipeView.hrefLabel.text = entry?.href ?? ""
            recipeView.ingredientsLabel.text = entry?.ingredients ?? ""
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.addSubview(recipeView)
        recipeView.translatesAutoresizingMaskIntoConstraints = false
        recipeView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        recipeView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        recipeView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        recipeView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
