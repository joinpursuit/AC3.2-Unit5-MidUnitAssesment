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
    self.view.addSubview(grayContainer)
    self.view.addSubview(bottomView)
    self.grayContainer.translatesAutoresizingMaskIntoConstraints = false
    self.bottomView.translatesAutoresizingMaskIntoConstraints = false
    
  }
  
  
  func configureConstraints() {
    let _ = [
        grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
        grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
        
        grayContainer.bottomAnchor.constraint(equalTo: self.bottomView.topAnchor),
        grayContainer.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0)
        ].map{ $0.isActive = true }
    
   
    let _ = [
        bottomView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
        bottomView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
        bottomView.bottomAnchor.constraint(equalTo: self.bottomLayoutGuide.topAnchor, constant: -8.0),
        bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15)
        ].map{ $0.isActive = true }
    
    
  }
  
  
  // MARK: - Define Your Views Here
  
  // ex: 
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
    
    lazy var grayContainer: audioChannelSection = {
        let view = audioChannelSection()
        view.backgroundColor = UIColor.lightGray
        return view
    }()
    
    lazy var bottomView: bottomLabelSection = {
        let bottomV = bottomLabelSection()
        bottomV.backgroundColor = .black
        return bottomV
    }()
    
    

}
