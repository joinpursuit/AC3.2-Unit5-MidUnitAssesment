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
    yellowViewLeftBottom.translatesAutoresizingMaskIntoConstraints = false
    yellowViewLeftTop.translatesAutoresizingMaskIntoConstraints = false
    yellowViewRightTop.translatesAutoresizingMaskIntoConstraints = false
    yellowViewRightBottom.translatesAutoresizingMaskIntoConstraints = false

    grayView.backgroundColor = soundBarGray
    redViewLeft.backgroundColor = soundBarRed
    redViewRight.backgroundColor = soundBarRed
    yellowViewLeftTop.backgroundColor = soundBarYellow
    yellowViewLeftBottom.backgroundColor = soundBarYellow
    yellowViewRightTop.backgroundColor = soundBarYellow
    yellowViewRightBottom.backgroundColor = soundBarYellow
    view.addSubview(grayView)
    view.addSubview(redViewRight)
    view.addSubview(redViewLeft)
    view.addSubview(yellowViewLeftTop)
    view.addSubview(yellowViewLeftBottom)
    view.addSubview(yellowViewRightTop)
    view.addSubview(yellowViewRightBottom)
    

    grayView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    grayView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    grayView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9).isActive = true
    grayView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7).isActive = true
    
    redViewLeft.centerYAnchor.constraint(equalTo: grayView.topAnchor, constant: 30.0).isActive = true
    redViewLeft.widthAnchor.constraint(equalTo: grayView.widthAnchor, multiplier: 0.25).isActive = true
    redViewLeft.heightAnchor.constraint(equalTo: grayView.heightAnchor, multiplier: 0.07).isActive = true
    redViewLeft.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: 30).isActive = true
    
    redViewRight.centerYAnchor.constraint(equalTo: grayView.topAnchor, constant: 30.0).isActive = true
    redViewRight.widthAnchor.constraint(equalTo: grayView.widthAnchor, multiplier: 0.25).isActive = true
    redViewRight.heightAnchor.constraint(equalTo: grayView.heightAnchor, multiplier: 0.07).isActive = true
    redViewRight.leadingAnchor.constraint(equalTo: grayView.centerXAnchor, constant: 30.0).isActive = true
    
    yellowViewLeftTop.centerYAnchor.constraint(equalTo: redViewLeft.bottomAnchor, constant: 60.0).isActive = true
    yellowViewLeftTop.widthAnchor.constraint(equalTo: redViewLeft.widthAnchor).isActive = true
    yellowViewLeftTop.heightAnchor.constraint(equalTo: redViewLeft.heightAnchor).isActive = true
    yellowViewLeftTop.leadingAnchor.constraint(equalTo: redViewLeft.leadingAnchor).isActive = true

    yellowViewRightTop.centerYAnchor.constraint(equalTo: redViewRight.bottomAnchor, constant: 60.0).isActive = true
    yellowViewRightTop.widthAnchor.constraint(equalTo: redViewRight.widthAnchor).isActive = true
    yellowViewRightTop.heightAnchor.constraint(equalTo: redViewRight.heightAnchor).isActive = true
    yellowViewRightTop.leadingAnchor.constraint(equalTo: redViewRight.leadingAnchor).isActive = true
    
    yellowViewRightBottom.centerYAnchor.constraint(equalTo: yellowViewRightTop.bottomAnchor, constant: 60.0).isActive = true
    yellowViewRightBottom.widthAnchor.constraint(equalTo: yellowViewRightTop.widthAnchor).isActive = true
    yellowViewRightBottom.heightAnchor.constraint(equalTo: yellowViewRightTop.heightAnchor).isActive = true
    yellowViewRightBottom.leadingAnchor.constraint(equalTo: yellowViewRightTop.leadingAnchor).isActive = true
    
    yellowViewLeftBottom.centerYAnchor.constraint(equalTo: yellowViewLeftTop.bottomAnchor, constant: 60.0).isActive = true
    yellowViewLeftBottom.widthAnchor.constraint(equalTo: yellowViewLeftTop.widthAnchor).isActive = true
    yellowViewLeftBottom.heightAnchor.constraint(equalTo: yellowViewLeftTop.heightAnchor).isActive = true
    yellowViewLeftBottom.leadingAnchor.constraint(equalTo: yellowViewLeftTop.leadingAnchor).isActive = true
    
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
}
