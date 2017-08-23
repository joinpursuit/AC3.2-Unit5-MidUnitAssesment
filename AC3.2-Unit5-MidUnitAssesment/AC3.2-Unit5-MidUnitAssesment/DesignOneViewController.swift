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
    self.edgesForExtendedLayout = []
    
    self.view.addSubview(grayContainer)
    self.view.addSubview(rightLabel)
    self.view.addSubview(leftLabel)
    self.view.addSubview(displayLabel)
    
    grayContainer.addSubview(redBar)
    grayContainer.addSubview(yellowBar1)
    grayContainer.addSubview(yellowBar2)
    grayContainer.addSubview(greenBar1)
    grayContainer.addSubview(greenBar2)
    
    redBar.addSubview(redLabel)
    yellowBar1.addSubview(yellow1Label)
    yellowBar2.addSubview(yellow2Label)
    greenBar1.addSubview(green1Label)
    greenBar2.addSubview(green2Label)
    
    redLabel.backgroundColor = soundBarGray
    yellow1Label.backgroundColor = soundBarGray
    yellow2Label.backgroundColor = soundBarGray
    green1Label.backgroundColor = soundBarGray
    green2Label.backgroundColor = soundBarGray
    
    grayContainer.backgroundColor = soundBarGray
    redBar.backgroundColor = soundBarRed
    yellowBar1.backgroundColor = soundBarYellow
    yellowBar2.backgroundColor = soundBarYellow
    greenBar1.backgroundColor = soundBarGreen
    greenBar2.backgroundColor = soundBarGreen
    
  }
  
  
  func configureConstraints() {
    
    let _ = [grayContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: standardMargin),
             grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin),
             grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -standardMargin)].map{ $0.isActive = true }
    
    let allBar = [redBar, yellowBar1, yellowBar2, greenBar1, greenBar2]
    let allLabel = [redLabel, yellow1Label, yellow2Label, green1Label, green2Label]
    
    let _ = [redBar.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: barMargin),
             yellowBar1.topAnchor.constraint(equalTo: redBar.bottomAnchor, constant: barMargin),
             yellowBar2.topAnchor.constraint(equalTo: yellowBar1.bottomAnchor, constant: barMargin),
             greenBar1.topAnchor.constraint(equalTo: yellowBar2.bottomAnchor, constant: barMargin),
             greenBar2.topAnchor.constraint(equalTo: greenBar1.bottomAnchor, constant: barMargin),
             greenBar2.bottomAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: -barMargin)].map{ $0.isActive = true }
    
    for bar in allBar{
        let _ = [bar.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: barMargin),
                 bar.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -barMargin),
                 bar.heightAnchor.constraint(equalToConstant: 40.0)].map{ $0.isActive = true }
    }
    
    let _ = [leftLabel.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 12),
             leftLabel.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor),
             leftLabel.trailingAnchor.constraint(equalTo: grayContainer.centerXAnchor)].map{ $0.isActive = true }
    
    let _ = [rightLabel.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 12),
             rightLabel.leadingAnchor.constraint(equalTo: grayContainer.centerXAnchor),
             rightLabel.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor)].map{ $0.isActive = true }
    
    let _ = [displayLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20),
             displayLabel.centerXAnchor.constraint(equalTo: grayContainer.centerXAnchor)].map{ $0.isActive = true }
    
    for index in 0...4{
        let _ = [allLabel[index].bottomAnchor.constraint(equalTo: allBar[index].bottomAnchor),
                 allLabel[index].topAnchor.constraint(equalTo: allBar[index].topAnchor),
                 allLabel[index].centerXAnchor.constraint(equalTo: allBar[index].centerXAnchor),
                 allLabel[index].widthAnchor.constraint(equalToConstant: 30)].map{ $0.isActive = true }
    }
  }
  
  
  // MARK: - Define Your Views Here
    
    let grayContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let greenBar1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let greenBar2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let redBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let yellowBar1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let yellowBar2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20.0)
        label.textColor = UIColor.white
        label.text = "Left"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20.0)
        label.textColor = UIColor.white
        label.text = "Right"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let displayLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 26.0)
        label.textColor = UIColor.white
        label.text = "Audio Channels"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let redLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18.0)
        label.text = "5"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let yellow1Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18.0)
        label.text = "4"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let yellow2Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18.0)
        label.text = "3"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let green1Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18.0)
        label.text = "2"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let green2Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18.0)
        label.text = "1"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
