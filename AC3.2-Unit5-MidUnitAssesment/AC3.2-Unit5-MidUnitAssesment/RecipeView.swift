//
//  RecipeView.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Eric Chang on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipeView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("RecipeView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }


}
