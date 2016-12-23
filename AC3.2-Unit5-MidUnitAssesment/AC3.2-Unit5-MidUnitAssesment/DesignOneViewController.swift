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
    //MARK: View Adds
    // Add Views Here
    self.edgesForExtendedLayout = []
    
    self.view.addSubview(mainLabel)
    self.view.addSubview(leftLabel)
    self.view.addSubview(rightLabel)
    self.view.addSubview(grayContainer)
    self.view.addSubview(label1)
    self.view.addSubview(label2)
    self.view.addSubview(label3)
    self.view.addSubview(label4)
    self.view.addSubview(label5)
    self.view.addSubview(leftGreen1)
    self.view.addSubview(leftGreen2)
    self.view.addSubview(leftYellow1)
    self.view.addSubview(leftYellow2)
    self.view.addSubview(leftRed)
    self.view.addSubview(rightGreen1)
    self.view.addSubview(rightGreen2)
    self.view.addSubview(rightYellow1)
    self.view.addSubview(rightYellow2)
    self.view.addSubview(rightRed)
    
    _ = [
        mainLabel,
        leftLabel,
        rightLabel,
        label1,
        label2,
        label3,
        label4,
        label5,
        grayContainer,
        leftGreen1,
        leftGreen2,
        rightGreen1,
        rightGreen2,
        leftYellow1,
        leftYellow2,
        rightYellow1,
        rightYellow2,
        leftRed,
        rightRed
        ].map { $0.translatesAutoresizingMaskIntoConstraints = false }
    
    //MARK: View Colors
    grayContainer.backgroundColor = soundBarGray
    leftGreen1.backgroundColor = soundBarGreen
    leftGreen2.backgroundColor = soundBarGreen
    leftYellow1.backgroundColor = soundBarYellow
    leftYellow2.backgroundColor = soundBarYellow
    leftRed.backgroundColor = soundBarRed
    rightGreen1.backgroundColor = soundBarGreen
    rightGreen2.backgroundColor = soundBarGreen
    rightYellow1.backgroundColor = soundBarYellow
    rightYellow2.backgroundColor = soundBarYellow
    rightRed.backgroundColor = soundBarRed
    
    //MARK: Labels
    
    mainLabel.text = "Audio Channels"
    mainLabel.font = mainLabel.font.withSize(mainLabelFontSize)
    _ = [
        mainLabel, leftLabel, rightLabel
    ].map { $0.textColor = .white }
    
    label1.text = "1"
    label2.text = "2"
    label3.text = "3"
    label4.text = "4"
    label5.text = "5"
    leftLabel.text = "Left"
    rightLabel.text = "Right"
    
    _ = [
        label1,
        label2,
        label3,
        label4,
        label5,
        leftLabel,
        rightLabel
        ].map { $0.font = UIFont(name: "Arial", size: subLabelFontSize) }
    }
  
  func configureConstraints() {
    // Add Constraints Here
    let mainLabelConstraints = [
        mainLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        mainLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -standardMargin)
    ]
    
    let grayConstraints = [
        grayContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: standardMargin),
        grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin),
        grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -standardMargin),
        grayContainer.bottomAnchor.constraint(equalTo: leftLabel.topAnchor, constant: -standardMargin),
    ]
    
    let leftGreen1Constraints = [
        leftGreen1.bottomAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: -barMargin),
        leftGreen1.leftAnchor.constraint(equalTo: grayContainer.leftAnchor, constant: barMargin),
        leftGreen1.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.3),
        leftGreen1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let leftGreen2Constraints = [
        leftGreen2.bottomAnchor.constraint(lessThanOrEqualTo: leftGreen1.topAnchor, constant: -barMargin),
        leftGreen2.leftAnchor.constraint(equalTo: grayContainer.leftAnchor, constant: barMargin),
        leftGreen2.widthAnchor.constraint(equalTo: leftGreen1.widthAnchor),
        leftGreen2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let leftYellow1Constraints = [
        leftYellow1.bottomAnchor.constraint(lessThanOrEqualTo: leftGreen2.topAnchor, constant: -barMargin),
        leftYellow1.leftAnchor.constraint(equalTo: grayContainer.leftAnchor, constant: barMargin),
        leftYellow1.widthAnchor.constraint(equalTo: leftGreen1.widthAnchor),
        leftYellow1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let leftYellow2Constraints = [
        leftYellow2.bottomAnchor.constraint(lessThanOrEqualTo: leftYellow1.topAnchor, constant: -barMargin),
        leftYellow2.leftAnchor.constraint(equalTo: grayContainer.leftAnchor, constant: barMargin),
        leftYellow2.widthAnchor.constraint(equalTo: leftGreen1.widthAnchor),
        leftYellow2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let leftRedConstraints = [
        leftRed.bottomAnchor.constraint(lessThanOrEqualTo: leftYellow2.topAnchor, constant: -barMargin),
        leftRed.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: barMargin),
        leftRed.leftAnchor.constraint(equalTo: grayContainer.leftAnchor, constant: barMargin),
        leftRed.widthAnchor.constraint(equalTo: leftGreen1.widthAnchor),
        leftRed.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let rightGreen1Constraints = [
        rightGreen1.bottomAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: -barMargin),
        rightGreen1.rightAnchor.constraint(equalTo: grayContainer.rightAnchor, constant: -barMargin),
        rightGreen1.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.3),
        rightGreen1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let rightGreen2Constraints = [
        rightGreen2.bottomAnchor.constraint(lessThanOrEqualTo: rightGreen1.topAnchor, constant: -barMargin),
        rightGreen2.rightAnchor.constraint(equalTo: grayContainer.rightAnchor, constant: -barMargin),
        rightGreen2.widthAnchor.constraint(equalTo: rightGreen1.widthAnchor),
        rightGreen2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let rightYellow1Constraints = [
        rightYellow1.bottomAnchor.constraint(lessThanOrEqualTo: rightGreen2.topAnchor, constant: -barMargin),
        rightYellow1.rightAnchor.constraint(equalTo: grayContainer.rightAnchor, constant: -barMargin),
        rightYellow1.widthAnchor.constraint(equalTo: rightGreen1.widthAnchor),
        rightYellow1.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let rightYellow2Constraints = [
        rightYellow2.bottomAnchor.constraint(lessThanOrEqualTo: rightYellow1.topAnchor, constant: -barMargin),
        rightYellow2.rightAnchor.constraint(equalTo: grayContainer.rightAnchor, constant: -barMargin),
        rightYellow2.widthAnchor.constraint(equalTo: rightGreen1.widthAnchor),
        rightYellow2.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let rightRedConstraints = [
        rightRed.bottomAnchor.constraint(lessThanOrEqualTo: rightYellow2.topAnchor, constant: -barMargin),
        rightRed.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: barMargin),
        rightRed.rightAnchor.constraint(equalTo: grayContainer.rightAnchor, constant: -barMargin),
        rightRed.widthAnchor.constraint(equalTo: rightGreen1.widthAnchor),
        rightRed.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.0909)
    ]
    
    let labelConstraints = [
        label1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        label1.centerYAnchor.constraint(equalTo: leftGreen1.centerYAnchor),
        
        label2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        label2.centerYAnchor.constraint(equalTo: leftGreen2.centerYAnchor),
        
        label3.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        label3.centerYAnchor.constraint(equalTo: leftYellow1.centerYAnchor),
        
        label4.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        label4.centerYAnchor.constraint(equalTo: leftYellow2.centerYAnchor),
        
        label5.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        label5.centerYAnchor.constraint(equalTo: leftRed.centerYAnchor),
        
        leftLabel.centerXAnchor.constraint(equalTo: leftGreen1.centerXAnchor),
        leftLabel.bottomAnchor.constraint(equalTo: mainLabel.topAnchor, constant: -standardMargin),
        
        rightLabel.centerXAnchor.constraint(equalTo: rightGreen1.centerXAnchor),
        rightLabel.bottomAnchor.constraint(equalTo: mainLabel.topAnchor, constant: -standardMargin)
    ]
    
    _ = [
        grayConstraints,
        leftGreen1Constraints,
        leftGreen2Constraints,
        leftYellow1Constraints,
        leftYellow2Constraints,
        leftRedConstraints,
        rightGreen1Constraints,
        rightGreen2Constraints,
        rightYellow1Constraints,
        rightYellow2Constraints,
        rightRedConstraints,
        mainLabelConstraints,
        labelConstraints
         ].map { $0.map { $0.isActive = true } }
  }
  
  // MARK: - Define Your Views Here
    let mainLabel:  UILabel = UILabel()
    let leftLabel:  UILabel = UILabel()
    let rightLabel: UILabel = UILabel()
    
    let label1: UILabel = UILabel()
    let label2: UILabel = UILabel()
    let label3: UILabel = UILabel()
    let label4: UILabel = UILabel()
    let label5: UILabel = UILabel()
    
    let grayContainer: UIView = UIView()
    
    let leftGreen1: UIView = UIView()
    let leftGreen2: UIView = UIView()
    let rightGreen1: UIView = UIView()
    let rightGreen2: UIView = UIView()
    
    let leftYellow1: UIView = UIView()
    let leftYellow2: UIView = UIView()
    let rightYellow1: UIView = UIView()
    let rightYellow2: UIView = UIView()
    
    let leftRed: UIView = UIView()
    let rightRed: UIView = UIView()
}
