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

  }
  
  
  func configureConstraints() {
    grayView.translatesAutoresizingMaskIntoConstraints = false
    redViewRight.translatesAutoresizingMaskIntoConstraints = false
    redViewLeft.translatesAutoresizingMaskIntoConstraints = false

    grayView.backgroundColor = soundBarGray
    redViewLeft.backgroundColor = soundBarRed
    redViewRight.backgroundColor = soundBarRed
    view.addSubview(grayView)
    view.addSubview(redViewRight)
    view.addSubview(redViewLeft)

    grayView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    grayView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    grayView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
    grayView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.75).isActive = true
    
    redViewLeft.centerXAnchor.constraint(equalTo: grayView.centerXAnchor).isActive = true
    redViewLeft.centerYAnchor.constraint(equalTo: grayView.centerYAnchor).isActive = true
    redViewLeft.widthAnchor.constraint(equalTo: grayView.widthAnchor, multiplier: 0.25).isActive = true
    redViewLeft.heightAnchor.constraint(equalTo: grayView.heightAnchor, multiplier: 0.07).isActive = true
    
  }
  
  
  // MARK: - Define Your Views Here
    let grayView = UIView()
    let redViewRight = UIView()
    let redViewLeft = UIView()
    let yellowViewRightTop = UIView()
    let yellowViewRightBottom = UIView()
    let yellowViewLeftTop = UIView()
    let yellowViewLeftBottom = UIView()
    let greenViewRightTop = UIView()
    let greenViewRightBottom = UIView()
    let greenViewLeftTop = UIView()
    let greenViewLeftBottom = UIView()
  // ex:
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
  

}
