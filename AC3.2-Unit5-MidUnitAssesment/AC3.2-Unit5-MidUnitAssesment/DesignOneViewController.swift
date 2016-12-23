//
//  DesignOneViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Louis Tur on 12/22/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DesignOneViewController: UIViewController, CellTitled {
    
    //   ----------------------------------
    //    DO NOT MODIFY THIS SECTION
    //    👇👇👇👇👇👇👇👇👇👇👇👇👇👇
    
    // MARK: - Provided Constants
    let soundBarRed: UIColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
    let soundBarYellow: UIColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    let soundBarGreen: UIColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    let soundBarGray: UIColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    
    let mainLabelFontSize: CGFloat = 24.0
    let subLabelFontSize: CGFloat = 18.0
    
    let standardMargin: CGFloat = 8.0
    let barMargin: CGFloat = 48.0
    
    // MARK: - CellTitled Protocol
    var titleForCell: String = "Design 1"
    
    //    ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️
    //    DO NOT MODIFY THIS SECTION
    //   ----------------------------------
    
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        self.setupViewHierarchy()
        self.configureConstraints()
        self.title = titleForCell
        
        
    }
    
    
    func setupViewHierarchy() {
        // Add Views Here
        self.view.addSubview(grayContainer)
        self.grayContainer.addSubview(leftGreen1)
    }
    
    
    func configureConstraints() {
        // Add Constraints Here
        grayContainer.translatesAutoresizingMaskIntoConstraints = false
        leftGreen1.translatesAutoresizingMaskIntoConstraints = false
        
        let soundBoardConstraints = [
            grayContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            grayContainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            grayContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: -10),
            grayContainer.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -80),
            grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10.0),
            grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10.0)
        ]
        
        let greenSoundBarLeft1 = [
            leftGreen1.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor),
            leftGreen1.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor),
            leftGreen1.heightAnchor.constraint(equalTo: grayContainer.widthAnchor, multipler: 1.0)
        ]
        
     
        let _ = [
            soundBoardConstraints,
            greenSoundBarLeft1
            ].map{ $0.map{ $0.isActive = true } }
    }
    
    
    // MARK: - Define Your Views Here
    
    // ex:
    let grayContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return view
    }()
    
    let leftGreen1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        return view
    }()
    
    let leftGreen2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        return view
    }()
    
    
}
