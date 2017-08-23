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
    grayContainer.backgroundColor = soundBarGray
    self.view.addSubview(grayContainer)
    
    leftRed1.backgroundColor = soundBarRed
    rightRed1.backgroundColor = soundBarRed
    self.grayContainer.addSubview(leftRed1)
    self.grayContainer.addSubview(rightRed1)
    
    leftYellow1.backgroundColor = soundBarYellow
    rightYellow1.backgroundColor = soundBarYellow
    leftYellow2.backgroundColor = soundBarYellow
    rightYellow2.backgroundColor = soundBarYellow
    grayContainer.addSubview(leftYellow1)
    grayContainer.addSubview(leftYellow2)
    grayContainer.addSubview(rightYellow1)
    grayContainer.addSubview(rightYellow2)
    
    leftGreen1.backgroundColor = soundBarGreen
    leftGreen2.backgroundColor = soundBarGreen
    rightGreen1.backgroundColor = soundBarGreen
    rightGreen2.backgroundColor = soundBarGreen
    grayContainer.addSubview(leftGreen1)
    grayContainer.addSubview(leftGreen2)
    grayContainer.addSubview(rightGreen1)
    grayContainer.addSubview(rightGreen2)
    
    grayContainer.addSubview(numberLabel1)
    grayContainer.addSubview(numberLabel2)
    grayContainer.addSubview(numberLabel3)
    grayContainer.addSubview(numberLabel4)
    grayContainer.addSubview(numberLabel5)
    view.addSubview(leftLabel)
    view.addSubview(rightLabel)
    view.addSubview(audioChannelLabel)
  }
  
  
  func configureConstraints() {
    // Add Constraints Here
    grayContainer.translatesAutoresizingMaskIntoConstraints = false
    grayContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    grayContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
    grayContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.70).isActive = true
    grayContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95).isActive = true
    
    leftRed1.translatesAutoresizingMaskIntoConstraints = false
    leftRed1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    leftRed1.widthAnchor.constraint(equalToConstant: 150).isActive = true
    leftRed1.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 55).isActive = true
    leftRed1.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 10).isActive = true
    
    rightRed1.translatesAutoresizingMaskIntoConstraints = false
    rightRed1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    rightRed1.widthAnchor.constraint(equalToConstant: 150).isActive = true
    rightRed1.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 55).isActive = true
    rightRed1.leadingAnchor.constraint(equalTo: numberLabel5.leadingAnchor, constant: 35).isActive = true
    
    leftYellow1.translatesAutoresizingMaskIntoConstraints = false
    leftYellow1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    leftYellow1.widthAnchor.constraint(equalToConstant: 150).isActive = true
    leftYellow1.topAnchor.constraint(equalTo: leftRed1.bottomAnchor, constant: 40).isActive = true
    leftYellow1.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 10).isActive = true
    
    rightYellow1.translatesAutoresizingMaskIntoConstraints = false
    rightYellow1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    rightYellow1.widthAnchor.constraint(equalToConstant: 150).isActive = true
    rightYellow1.topAnchor.constraint(equalTo: rightRed1.bottomAnchor, constant: 40).isActive = true
    rightYellow1.leadingAnchor.constraint(equalTo: numberLabel5.leadingAnchor, constant: 35).isActive = true
    
    leftYellow2.translatesAutoresizingMaskIntoConstraints = false
    leftYellow2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    leftYellow2.widthAnchor.constraint(equalToConstant: 150).isActive = true
    leftYellow2.topAnchor.constraint(equalTo: leftYellow1.bottomAnchor, constant: 40).isActive = true
    leftYellow2.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 10).isActive = true
    
    rightYellow2.translatesAutoresizingMaskIntoConstraints = false
    rightYellow2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    rightYellow2.widthAnchor.constraint(equalToConstant: 150).isActive = true
    rightYellow2.topAnchor.constraint(equalTo: rightYellow1.bottomAnchor, constant: 40).isActive = true
    rightYellow2.leadingAnchor.constraint(equalTo: numberLabel5.leadingAnchor, constant: 35).isActive = true
    
    leftGreen1.translatesAutoresizingMaskIntoConstraints = false
    leftGreen1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    leftGreen1.widthAnchor.constraint(equalToConstant: 150).isActive = true
    leftGreen1.topAnchor.constraint(equalTo: leftYellow2.bottomAnchor, constant: 40).isActive = true
    leftGreen1.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 10).isActive = true
    
    rightGreen1.translatesAutoresizingMaskIntoConstraints = false
    rightGreen1.heightAnchor.constraint(equalToConstant: 50).isActive = true
    rightGreen1.widthAnchor.constraint(equalToConstant: 150).isActive = true
    rightGreen1.topAnchor.constraint(equalTo: rightYellow2.bottomAnchor, constant: 40).isActive = true
    rightGreen1.leadingAnchor.constraint(equalTo: numberLabel5.leadingAnchor, constant: 35).isActive = true
    
    leftGreen2.translatesAutoresizingMaskIntoConstraints = false
    leftGreen2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    leftGreen2.widthAnchor.constraint(equalToConstant: 150).isActive = true
    leftGreen2.topAnchor.constraint(equalTo: leftGreen1.bottomAnchor, constant: 40).isActive = true
    leftGreen2.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 10).isActive = true
    
    rightGreen2.translatesAutoresizingMaskIntoConstraints = false
    rightGreen2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    rightGreen2.widthAnchor.constraint(equalToConstant: 150).isActive = true
    rightGreen2.topAnchor.constraint(equalTo: rightGreen1.bottomAnchor, constant: 40).isActive = true
    rightGreen2.leadingAnchor.constraint(equalTo: numberLabel5.leadingAnchor, constant: 35).isActive = true
    
    numberLabel5.translatesAutoresizingMaskIntoConstraints = false
    numberLabel5.centerXAnchor.constraint(equalTo: grayContainer.centerXAnchor).isActive = true
    numberLabel5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 65).isActive = true
    numberLabel4.translatesAutoresizingMaskIntoConstraints = false
    numberLabel4.centerXAnchor.constraint(equalTo: grayContainer.centerXAnchor).isActive = true
    numberLabel4.topAnchor.constraint(equalTo: numberLabel5.bottomAnchor, constant: 65).isActive = true
    numberLabel3.translatesAutoresizingMaskIntoConstraints = false
    numberLabel3.centerXAnchor.constraint(equalTo: grayContainer.centerXAnchor).isActive = true
    numberLabel3.topAnchor.constraint(equalTo: numberLabel4.bottomAnchor, constant: 65).isActive = true
    numberLabel2.translatesAutoresizingMaskIntoConstraints = false
    numberLabel2.centerXAnchor.constraint(equalTo: grayContainer.centerXAnchor).isActive = true
    numberLabel2.topAnchor.constraint(equalTo: numberLabel3.bottomAnchor, constant: 65).isActive = true
    numberLabel1.translatesAutoresizingMaskIntoConstraints = false
    numberLabel1.centerXAnchor.constraint(equalTo: grayContainer.centerXAnchor).isActive = true
    numberLabel1.topAnchor.constraint(equalTo: numberLabel2.bottomAnchor, constant: 65).isActive = true
    
    leftLabel.translatesAutoresizingMaskIntoConstraints = false
    leftLabel.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 20).isActive = true
    leftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 75).isActive = true
    
    rightLabel.translatesAutoresizingMaskIntoConstraints = false
    rightLabel.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 20).isActive = true
    rightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -75).isActive = true
    
    audioChannelLabel.translatesAutoresizingMaskIntoConstraints = false
    audioChannelLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    audioChannelLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25).isActive = true
    
  }
  
  
  // MARK: - Define Your Views Here
  
  // ex: 
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
    var grayContainer = UIView()
    var leftRed1 = UIView()
    var rightRed1 = UIView()
    var leftYellow1 = UIView()
    var rightYellow1 = UIView()
    var leftYellow2 = UIView()
    var rightYellow2 = UIView()
    var leftGreen1 = UIView()
    var rightGreen1 = UIView()
    var leftGreen2 = UIView()
    var rightGreen2 = UIView()
    var numberLabel1: UILabel = {
        let label: UILabel = UILabel()
        label.text = "1"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .black
        return label
    }()
    var numberLabel2: UILabel = {
        let label: UILabel = UILabel()
        label.text = "2"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .black
        return label
    }()
    var numberLabel3: UILabel = {
        let label: UILabel = UILabel()
        label.text = "3"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .black
        return label
    }()
    var numberLabel4: UILabel = {
        let label: UILabel = UILabel()
        label.text = "4"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .black
        return label
    }()
    var numberLabel5: UILabel = {
        let label: UILabel = UILabel()
        label.text = "5"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .black
        return label
    }()
    var leftLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Left"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .white
        return label
    }()
    var rightLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Right"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .white
        return label
    }()
    var audioChannelLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Audio Channel"
        label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightMedium)
        label.textColor = .white
        return label
    }()

}
