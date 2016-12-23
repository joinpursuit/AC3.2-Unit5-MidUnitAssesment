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
    
    self.edgesForExtendedLayout = []
    self.setupViewHierarchy()
    self.configureConstraints()
    self.title = titleForCell
  }
  
  
  func setupViewHierarchy() {
    self.grayContainer.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(grayContainer)
    grayContainer.backgroundColor = soundBarGray
    
    self.numberThreeLabel.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(numberThreeLabel)
    self.numberThreeLabel.text = "3"
    
    self.numberFourLabel.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(numberFourLabel)
    self.numberFourLabel.text = "4"
    
    self.numberFiveLabel.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(numberFiveLabel)
    self.numberFiveLabel.text = "5"
    
    self.numberTwoLabel.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(numberTwoLabel)
    self.numberTwoLabel.text = "2"
    
    self.numberOneLabel.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(numberOneLabel)
    self.numberOneLabel.text = "1"
    
    self.leftYellowOne.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(leftYellowOne)
    self.leftYellowOne.backgroundColor = soundBarYellow
    
    self.rightYellowOne.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(rightYellowOne)
    self.rightYellowOne.backgroundColor = soundBarYellow
    
    self.leftGreenTwo.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(leftGreenTwo)
    self.leftGreenTwo.backgroundColor = soundBarGreen
    
    self.rightGreenTwo.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(rightGreenTwo)
    self.rightGreenTwo.backgroundColor = soundBarGreen
    
    self.leftGreenOne.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(leftGreenOne)
    self.leftGreenOne.backgroundColor = soundBarGreen
    
    self.rightGreenOne.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(rightGreenOne)
    self.rightGreenOne.backgroundColor = soundBarGreen
    
    self.leftYellowTwo.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(leftYellowTwo)
    self.leftYellowTwo.backgroundColor = soundBarYellow
    
    self.rightYellowTwo.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(rightYellowTwo)
    self.rightYellowTwo.backgroundColor = soundBarYellow
    
    self.leftRed.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(leftRed)
    self.leftRed.backgroundColor = soundBarRed
    
    self.rightRed.translatesAutoresizingMaskIntoConstraints = false
    self.grayContainer.addSubview(rightRed)
    self.rightRed.backgroundColor = soundBarRed
    
    
    self.audioChannelLabel.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(audioChannelLabel)
    self.audioChannelLabel.text = "Audio Channels"
    self.audioChannelLabel.textColor = .white
    
    self.leftLabel.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(leftLabel)
    self.leftLabel.text = "Left"
    self.leftLabel.textColor = .white
    
    self.rightLabel.translatesAutoresizingMaskIntoConstraints = false
    self.view.addSubview(rightLabel)
    self.rightLabel.text = "Right"
    self.rightLabel.textColor = .white 
    
  }
  
  
  func configureConstraints() {
    let grayConstraints = [
        self.grayContainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        self.grayContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        self.grayContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: standardMargin),
        self.grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin),
        self.grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -standardMargin),
        self.grayContainer.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.80)
        ].map {$0.isActive = true }
    
    //Number Three Label
    let _ = [
        self.numberThreeLabel.centerXAnchor.constraint(equalTo: self.grayContainer.centerXAnchor),
        self.numberThreeLabel.centerYAnchor.constraint(equalTo: self.grayContainer.centerYAnchor)
        ].map {$0.isActive = true}
    
    //Number Four Label
    let _ = [
        self.numberFourLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        self.numberFourLabel.bottomAnchor.constraint(equalTo: self.numberThreeLabel.topAnchor, constant: -barMargin)
        ].map {$0.isActive = true}
    
    //Number Five Label
    let _ = [
        self.numberFiveLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        self.numberFiveLabel.bottomAnchor.constraint(equalTo: self.numberFourLabel.topAnchor, constant: -barMargin)
        ].map {$0.isActive = true }
    
    //Number Two Label
    let _ = [
     self.numberTwoLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
     self.numberTwoLabel.topAnchor.constraint(equalTo: self.numberThreeLabel.bottomAnchor, constant: barMargin)
    ].map {$0.isActive = true }
    
    //Number One Label
    let _ = [
        self.numberOneLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        self.numberOneLabel.topAnchor.constraint(equalTo: self.numberTwoLabel.bottomAnchor, constant: barMargin)
    ].map {$0.isActive = true }
    
    //Row 3 Views 
    let _ = [
        self.leftYellowOne.centerYAnchor.constraint(equalTo: self.grayContainer.centerYAnchor),
        self.leftYellowOne.trailingAnchor.constraint(equalTo: self.numberThreeLabel.leadingAnchor , constant: -standardMargin),
        self.leftYellowOne.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: barMargin),
        self.leftYellowOne.heightAnchor.constraint(equalTo: self.numberThreeLabel.heightAnchor, multiplier: 1.5),
        self.rightYellowOne.centerYAnchor.constraint(equalTo: self.grayContainer.centerYAnchor),
        self.rightYellowOne.leadingAnchor.constraint(equalTo: self.numberThreeLabel.trailingAnchor , constant: standardMargin),
        self.rightYellowOne.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -barMargin),
        self.rightYellowOne.heightAnchor.constraint(equalTo: self.numberThreeLabel.heightAnchor, multiplier: 1.5)
    ].map {$0.isActive = true }
    
    // Row 2 Views 
    
    let _ = [
    self.leftGreenTwo.trailingAnchor.constraint(equalTo: self.numberTwoLabel.leadingAnchor , constant: -standardMargin),
    self.leftGreenTwo.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: barMargin),
    self.leftGreenTwo.heightAnchor.constraint(equalTo: self.numberTwoLabel.heightAnchor, multiplier: 1.5),
    self.leftGreenTwo.topAnchor.constraint(equalTo: self.leftYellowOne.bottomAnchor, constant: 42),
    self.rightGreenTwo.leadingAnchor.constraint(equalTo: self.numberTwoLabel.trailingAnchor , constant: standardMargin),
    self.rightGreenTwo.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -barMargin),
    self.rightGreenTwo.heightAnchor.constraint(equalTo: self.numberTwoLabel.heightAnchor, multiplier: 1.5),
    self.rightGreenTwo.topAnchor.constraint(equalTo: self.rightYellowOne.bottomAnchor, constant: 42)
    ].map {$0.isActive = true }
    
    //Row 1 Views
    let _ = [
        self.leftGreenOne.trailingAnchor.constraint(equalTo: self.numberOneLabel.leadingAnchor , constant: -standardMargin),
        self.leftGreenOne.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: barMargin),
        self.leftGreenOne.heightAnchor.constraint(equalTo: self.numberOneLabel.heightAnchor, multiplier: 1.5),
        self.leftGreenOne.topAnchor.constraint(equalTo: self.leftGreenTwo.bottomAnchor, constant: 42),
        self.rightGreenOne.leadingAnchor.constraint(equalTo: self.numberOneLabel.trailingAnchor , constant: standardMargin),
        self.rightGreenOne.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -barMargin),
        self.rightGreenOne.heightAnchor.constraint(equalTo: self.numberOneLabel.heightAnchor, multiplier: 1.5),
        self.rightGreenOne.topAnchor.constraint(equalTo: self.rightGreenTwo.bottomAnchor, constant: 42)
        ].map {$0.isActive = true }
    
    //Row 4 Views 
    
    let _ = [
        self.leftYellowTwo.trailingAnchor.constraint(equalTo: self.numberFourLabel.leadingAnchor , constant: -standardMargin),
        self.leftYellowTwo.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: barMargin),
        self.leftYellowTwo.heightAnchor.constraint(equalTo: self.numberFourLabel.heightAnchor, multiplier: 1.5),
        self.leftYellowTwo.bottomAnchor.constraint(equalTo: self.leftYellowOne.topAnchor, constant: -42),
        self.rightYellowTwo.leadingAnchor.constraint(equalTo: self.numberFourLabel.trailingAnchor , constant: standardMargin),
        self.rightYellowTwo.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -barMargin),
        self.rightYellowTwo.heightAnchor.constraint(equalTo: self.numberFourLabel.heightAnchor, multiplier: 1.5),
        self.rightYellowTwo.bottomAnchor.constraint(equalTo: self.rightYellowOne.topAnchor, constant: -42)
        ].map {$0.isActive = true }
    
    // Row 5 views
    let _ = [
        self.leftRed.trailingAnchor.constraint(equalTo: self.numberFiveLabel.leadingAnchor , constant: -standardMargin),
        self.leftRed.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: barMargin),
        self.leftRed.heightAnchor.constraint(equalTo: self.numberFiveLabel.heightAnchor, multiplier: 1.5),
        self.leftRed.bottomAnchor.constraint(equalTo: self.leftYellowTwo.topAnchor, constant: -42),
        self.rightRed.leadingAnchor.constraint(equalTo: self.numberFiveLabel.trailingAnchor , constant: standardMargin),
        self.rightRed.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -barMargin),
        self.rightRed.heightAnchor.constraint(equalTo: self.numberFiveLabel.heightAnchor, multiplier: 1.5),
        self.rightRed.bottomAnchor.constraint(equalTo: self.rightYellowTwo.topAnchor, constant: -42)
        ].map {$0.isActive = true }
    
    
    //Audio Label
    let _ = [
        self.audioChannelLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    self.audioChannelLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30)
        ].map {$0.isActive = true}
    
    
    //Left And Right Label
    let _ = [
        self.leftLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: (self.view.frame.size.width / -2) / 2 ),
        self.leftLabel.topAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: standardMargin),
        self.rightLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: (self.view.frame.size.width / 2) / 2 ),
        self.rightLabel.topAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: standardMargin)
        ].map {$0.isActive = true}
  }
  
  
  // MARK: - Define Your Views Here
  
    let grayContainer: UIView = UIView()
    let leftGreenOne: UIView = UIView()
    let leftGreenTwo: UIView = UIView()
    let leftYellowOne: UIView = UIView()
    let leftYellowTwo: UIView = UIView()
    let leftRed: UIView = UIView()
    let rightGreenOne: UIView = UIView()
    let rightGreenTwo: UIView = UIView()
    let rightYellowOne: UIView = UIView()
    let rightYellowTwo: UIView = UIView()
    let rightRed: UIView = UIView()
    let leftLabel: UILabel = UILabel()
    let rightLabel: UILabel = UILabel()
    let audioChannelLabel: UILabel = UILabel()
    let numberOneLabel: UILabel = UILabel()
    let numberTwoLabel: UILabel = UILabel()
    let numberThreeLabel: UILabel = UILabel()
    let numberFourLabel: UILabel = UILabel()
    let numberFiveLabel: UILabel = UILabel()
  // ex: 
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
  

}
