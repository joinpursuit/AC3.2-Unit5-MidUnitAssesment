//
//  RecipesView.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Edward Anchundia on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipesView: UIView {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var ingredients: UILabel!
    @IBOutlet weak var href: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        if let view = Bundle.main.loadNibNamed("RecipesView", owner: self, options: nil)?.first as? UIView {
            self.addSubview(view)
            view.frame = self.bounds
        }
    }
    
}
