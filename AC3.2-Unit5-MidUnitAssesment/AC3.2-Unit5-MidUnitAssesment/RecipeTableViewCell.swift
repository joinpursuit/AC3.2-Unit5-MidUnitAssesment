//
//  RecipeTableViewCell.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Ana Ma on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ingredientsLabel: UILabel!
    @IBOutlet weak var linkLabel: UILabel!
    
//    lazy var titleLabel2: UILabel = {
//        let tl = UILabel()
//        tl.textAlignment = NSTextAlignment.left
//        tl.numberOfLines = 0
//        tl.translatesAutoresizingMaskIntoConstraints = false
//        return tl
//    }()
//    
//    lazy var ingredientsLabel2: UILabel = {
//        let il = UILabel()
//        il.textAlignment = NSTextAlignment.left
//        il.numberOfLines = 0
//        il.translatesAutoresizingMaskIntoConstraints = false
//        return il
//    }()
//    
//    lazy var linkLabel2: UILabel = {
//        let ll = UILabel()
//        //cl.adjustsFontSizeToFitWidth = true
//        ll.textAlignment = NSTextAlignment.center
//        ll.numberOfLines = 0
//        ll.translatesAutoresizingMaskIntoConstraints = false
//        return ll
//    }()
//    
//    func constraintLabels() {
//        let _ = [
//            titleLabel2.topAnchor.constraint(equalTo: self.topAnchor, constant: 8.0),
//            titleLabel2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0),
//            titleLabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0)
//            ].map { $0.isActive = true }
//        let _ = [
//            ingredientsLabel2.topAnchor.constraint(equalTo: self.titleLabel2.bottomAnchor, constant: 8.0),
//            ingredientsLabel2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0),
//            ingredientsLabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0),
//            ].map { $0.isActive = true }
//        let _ = [
//            linkLabel2.topAnchor.constraint(equalTo: self.ingredientsLabel2.bottomAnchor, constant: 8.0),
//            linkLabel2.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8.0),
//            linkLabel2.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8.0),
//            linkLabel2.bottomAnchor.constraint(equalTo: self.bottomAnchor)
//            ].map { $0.isActive = true }
//    }
//
  
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.addSubview(titleLabel2)
//        self.addSubview(ingredientsLabel2)
//        self.addSubview(linkLabel2)
//        constraintLabels()
////        if let view = Bundle.main.loadNibNamed("RecipeTableViewCell", owner: self, options: nil)?.first as? UIView {
////            self.addSubview(view)
////            view.frame = self.bounds
////        }
    }
}
