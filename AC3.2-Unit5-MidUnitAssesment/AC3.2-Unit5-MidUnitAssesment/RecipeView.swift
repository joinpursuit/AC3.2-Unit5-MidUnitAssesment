//
//  RecipeView.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jermaine Kelly on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class RecipeView: UIView {

    var titleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    var hrefLabel: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(15)
        return label
    }()
    var ingredientsLabel: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(20)
        return label
    }()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    func setUpView(){
        
        self.addSubview(titleLabel)
        self.addSubview(hrefLabel)
        self.addSubview(ingredientsLabel)
        
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        titleLabel.numberOfLines = 0
        
        
        hrefLabel.topAnchor.constraint(equalTo: ingredientsLabel.bottomAnchor, constant: 10).isActive = true
        hrefLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        hrefLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        hrefLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        
        
        ingredientsLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10).isActive = true
        ingredientsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        ingredientsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        ingredientsLabel.numberOfLines = 0
        
        
        
    }
    
}
