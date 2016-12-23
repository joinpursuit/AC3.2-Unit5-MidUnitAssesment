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
  
  
    // MARK: - Define Your Views Here
    
    
    let grayContainer = UIView()
    let leftGreen1 = UIView()
    let leftGreen2 = UIView()
    let leftYellow3 = UIView()
    let leftYellow4 = UIView()
    let leftRed5 = UIView()
    let rightGreen1 = UIView()
    let rightGreen2 = UIView()
    let rightYellow3 = UIView()
    let rightYellow4 = UIView()
    let rightRed5 = UIView()
    let leftLabel = UILabel()
    let rightLabel = UILabel()
    let audioChannelsLabel = UILabel()
    let oneLabel = UILabel()
    let twoLabel = UILabel()
    let threeLabel = UILabel()
    let fourLabel = UILabel()
    let fiveLabel = UILabel()
    
  func setupViewHierarchy() {
    // Add Views Here
    self.view.addSubview(audioChannelsLabel)
    self.view.addSubview(rightLabel)
    self.view.addSubview(leftLabel)
    self.view.addSubview(grayContainer)
    self.grayContainer.addSubview(leftGreen1)
    self.grayContainer.addSubview(leftGreen2)
    self.grayContainer.addSubview(leftYellow3)
    self.grayContainer.addSubview(leftYellow4)
    self.grayContainer.addSubview(leftRed5)
    self.grayContainer.addSubview(rightGreen1)
    self.grayContainer.addSubview(rightGreen2)
    self.grayContainer.addSubview(rightYellow3)
    self.grayContainer.addSubview(rightYellow4)
    self.grayContainer.addSubview(rightRed5)
    self.grayContainer.addSubview(oneLabel)
    self.grayContainer.addSubview(twoLabel)
    self.grayContainer.addSubview(threeLabel)
    self.grayContainer.addSubview(fourLabel)
    self.grayContainer.addSubview(fiveLabel)

  }
  
  
  func configureConstraints() {
    let _ = [
    grayContainer, leftGreen1, leftGreen2, leftYellow3, leftYellow4, leftRed5, rightGreen1, rightGreen2, rightYellow3, rightYellow4, rightRed5, leftLabel, rightLabel, audioChannelsLabel, oneLabel, twoLabel, threeLabel, fourLabel, fiveLabel
        ].map {$0.translatesAutoresizingMaskIntoConstraints = false }
    
    //Bottom Labels
    audioChannelsLabel.text = "Audio Channels"
    audioChannelsLabel.textColor = UIColor.white
    audioChannelsLabel.font.withSize(mainLabelFontSize)
    audioChannelsLabel.textAlignment = .center
    let _ = [
    audioChannelsLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
    audioChannelsLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
    audioChannelsLabel.heightAnchor.constraint(equalToConstant: 40),
    audioChannelsLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin),
    audioChannelsLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -standardMargin)
        ].map {$0.isActive = true}
    
    rightLabel.text = "Right"
    rightLabel.textColor = UIColor.white
    rightLabel.font.withSize(subLabelFontSize)
    rightLabel.textAlignment = .center
    let _ = [
        rightLabel.trailingAnchor.constraint(equalTo: audioChannelsLabel.trailingAnchor, constant: -48),
        rightLabel.leadingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: standardMargin*2),
    rightLabel.heightAnchor.constraint(equalToConstant: 34),
    rightLabel.bottomAnchor.constraint(equalTo: audioChannelsLabel.topAnchor, constant: -standardMargin)
        ].map{$0.isActive = true}
    
    leftLabel.text = "Left"
    leftLabel.textColor = .white
    leftLabel.textAlignment = .center
    leftLabel.font.withSize(subLabelFontSize)
    
    let _ = [
        leftLabel.trailingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -standardMargin*2),
        leftLabel.leadingAnchor.constraint(equalTo: audioChannelsLabel.leadingAnchor, constant: 48),
        leftLabel.heightAnchor.constraint(equalToConstant: 34),
        leftLabel.bottomAnchor.constraint(equalTo: audioChannelsLabel.topAnchor, constant: -standardMargin)
        ].map{$0.isActive = true}
    
    //Grey View
    grayContainer.backgroundColor = soundBarGray
    
    let _ = [
        grayContainer.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor , constant: standardMargin),
        grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin),
        grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -standardMargin),
        grayContainer.bottomAnchor.constraint(equalTo: leftLabel.topAnchor, constant: -standardMargin)
        ].map {$0.isActive = true}
    
    //Level One Bars
    let barHeight: CGFloat = 42
    leftGreen1.backgroundColor = soundBarGreen
    rightGreen1.backgroundColor = soundBarGreen
    oneLabel.text = "1"
    oneLabel.font.withSize(subLabelFontSize)
    oneLabel.textAlignment = .center
    let _ = [
        leftGreen1.topAnchor.constraint(equalTo: leftGreen2.bottomAnchor, constant:barMargin),
        leftGreen1.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: barMargin),
        leftGreen1.trailingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: -standardMargin*2),
        leftGreen1.heightAnchor.constraint(equalToConstant: barHeight),
        rightGreen1.topAnchor.constraint(equalTo: leftGreen2.bottomAnchor, constant: barMargin),
        rightGreen1.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -barMargin),
        rightGreen1.leadingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: standardMargin*2),
        rightGreen1.heightAnchor.constraint(equalToConstant: barHeight),
        oneLabel.leadingAnchor.constraint(equalTo: leftGreen1.trailingAnchor),
        oneLabel.trailingAnchor.constraint(equalTo: rightGreen1.leadingAnchor),
        oneLabel.heightAnchor.constraint(equalToConstant: barHeight),
        oneLabel.centerYAnchor.constraint(equalTo: leftGreen1.centerYAnchor)
        ].map{$0.isActive = true}
    
    //Level Two Bars
    leftGreen2.backgroundColor = soundBarGreen
    rightGreen2.backgroundColor = soundBarGreen
    twoLabel.text = "2"
    twoLabel.font.withSize(subLabelFontSize)
    twoLabel.textAlignment = .center
    let _ = [
        leftGreen2.topAnchor.constraint(equalTo: leftYellow3.bottomAnchor, constant: barMargin),
        leftGreen2.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: barMargin),
        leftGreen2.trailingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: -standardMargin*2),
        leftGreen2.heightAnchor.constraint(equalToConstant: barHeight),
        rightGreen2.topAnchor.constraint(equalTo: rightYellow3.bottomAnchor, constant: barMargin),
        rightGreen2.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -barMargin),
        rightGreen2.leadingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: standardMargin*2),
        rightGreen2.heightAnchor.constraint(equalToConstant: barHeight),
        twoLabel.leadingAnchor.constraint(equalTo: leftGreen2.trailingAnchor),
        twoLabel.trailingAnchor.constraint(equalTo: rightGreen2.leadingAnchor),
        twoLabel.heightAnchor.constraint(equalToConstant: barHeight),
        twoLabel.centerYAnchor.constraint(equalTo: leftGreen2.centerYAnchor)
        ].map{$0.isActive = true}
    
    //Level Three Bars
    leftYellow3.backgroundColor = soundBarYellow
    rightYellow3.backgroundColor = soundBarYellow
    threeLabel.textAlignment = .center
    threeLabel.text = "3"
    threeLabel.font.withSize(subLabelFontSize)
    let _ = [
        leftYellow3.topAnchor.constraint(equalTo: leftYellow4.bottomAnchor, constant: barMargin),
    leftYellow3.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: barMargin),
    leftYellow3.trailingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: -standardMargin*2),
    leftYellow3.heightAnchor.constraint(equalToConstant: barHeight),
    rightYellow3.topAnchor.constraint(equalTo: rightYellow4.bottomAnchor, constant: barMargin),
    rightYellow3.leadingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: standardMargin*2),
    rightYellow3.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor ,constant: -barMargin),
    rightYellow3.heightAnchor.constraint(equalToConstant: barHeight),
    threeLabel.leadingAnchor.constraint(equalTo: leftYellow3.trailingAnchor),
    threeLabel.trailingAnchor.constraint(equalTo: rightYellow3.leadingAnchor),
    threeLabel.centerYAnchor.constraint(equalTo: rightYellow3.centerYAnchor),
    threeLabel.heightAnchor.constraint(equalToConstant: barHeight)
        ].map{$0.isActive = true}
    
    
    //Level Four Bars
    leftYellow4.backgroundColor = soundBarYellow
    rightYellow4.backgroundColor = soundBarYellow
    fourLabel.text = "4"
    fourLabel.textAlignment = .center
    fourLabel.font.withSize(subLabelFontSize)
    let _ = [
        leftYellow4.topAnchor.constraint(equalTo: leftRed5.bottomAnchor, constant: barMargin),
        leftYellow4.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: barMargin),
        leftYellow4.trailingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: -standardMargin*2),
        leftYellow4.heightAnchor.constraint(equalToConstant: barHeight),
        rightYellow4.topAnchor.constraint(equalTo: rightRed5.bottomAnchor, constant: barMargin),
        rightYellow4.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -barMargin),
        rightYellow4.leadingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: standardMargin*2),
        rightYellow4.heightAnchor.constraint(equalToConstant: barHeight),
        fourLabel.leadingAnchor.constraint(equalTo: leftYellow4.trailingAnchor),
        fourLabel.trailingAnchor.constraint(equalTo: rightYellow4.leadingAnchor),
        fourLabel.centerYAnchor.constraint(equalTo: rightYellow4.centerYAnchor),
        fourLabel.heightAnchor.constraint(equalToConstant: barHeight)
        ].map{$0.isActive = true}
    
    
    //Level Five Bars
    leftRed5.backgroundColor = soundBarRed
    rightRed5.backgroundColor = soundBarRed
    fiveLabel.textAlignment = .center
    fiveLabel.text = "5"
    fiveLabel.font.withSize(subLabelFontSize)
    let _ = [
        leftRed5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: barMargin),
        leftRed5.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: barMargin),
        leftRed5.trailingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: -standardMargin*2),
        leftRed5.heightAnchor.constraint(equalToConstant: barHeight),
        rightRed5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: barMargin),
        rightRed5.leadingAnchor.constraint(equalTo: grayContainer.centerXAnchor, constant: standardMargin*2),
        rightRed5.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -barMargin),
        rightRed5.heightAnchor.constraint(equalToConstant: barHeight),
        fiveLabel.leadingAnchor.constraint(equalTo: leftRed5.trailingAnchor),
        fiveLabel.trailingAnchor.constraint(equalTo: rightRed5.leadingAnchor),
        fiveLabel.centerYAnchor.constraint(equalTo: rightRed5.centerYAnchor),
        fiveLabel.heightAnchor.constraint(equalToConstant: barHeight)
        ].map{$0.isActive = true}
    }
    
  
  

}
