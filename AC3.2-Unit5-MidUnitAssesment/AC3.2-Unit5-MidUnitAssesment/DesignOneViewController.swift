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
    
    self.view.addSubview(containerView)
    self.view.addSubview(leftChannelLabel)
    self.view.addSubview(rightChannelLabel)
    self.view.addSubview(audioMainLabel)
    
    self.containerView.addSubview(greenLeft1View)
    self.containerView.addSubview(greenLeft2View)
    self.containerView.addSubview(greenRight1View)
    self.containerView.addSubview(greenRight2View)
    self.containerView.addSubview(yellowLeft1View)
    self.containerView.addSubview(yellowLeft2View)
    self.containerView.addSubview(yellowRight1View)
    self.containerView.addSubview(yellowRight2View)
    self.containerView.addSubview(redLeftView)
    self.containerView.addSubview(redRightView)
    
    self.containerView.addSubview(redLabel)
    self.containerView.addSubview(yellow2Label)
    self.containerView.addSubview(yellow1Label)
    self.containerView.addSubview(green2Label)
    self.containerView.addSubview(green1Label)
  }
  
  
  func configureConstraints() {
    // Add Constraints Here
    self.edgesForExtendedLayout = []
    
    let containerConstraints = [
      containerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: standardMargin),
      containerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: standardMargin),
      containerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -standardMargin)
    ]
    
    let leftBarConstraints = [
      // Red
      redLeftView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: barMargin),
      redLeftView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: barMargin),
      redLeftView.heightAnchor.constraint(equalToConstant: 40.0),
      redLeftView.widthAnchor.constraint(equalToConstant: 120.0),
      
      yellowLeft2View.topAnchor.constraint(equalTo: redLeftView.bottomAnchor, constant: barMargin),
      yellowLeft2View.leadingAnchor.constraint(equalTo: redLeftView.leadingAnchor),
      yellowLeft2View.heightAnchor.constraint(equalTo: redLeftView.heightAnchor),
      yellowLeft2View.trailingAnchor.constraint(equalTo: redLeftView.trailingAnchor),
      
      yellowLeft1View.topAnchor.constraint(equalTo: yellowLeft2View.bottomAnchor, constant: barMargin),
      yellowLeft1View.leadingAnchor.constraint(equalTo: redLeftView.leadingAnchor),
      yellowLeft1View.heightAnchor.constraint(equalTo: redLeftView.heightAnchor),
      yellowLeft1View.trailingAnchor.constraint(equalTo: redLeftView.trailingAnchor),
      
      greenLeft2View.topAnchor.constraint(equalTo: yellowLeft1View.bottomAnchor, constant: barMargin),
      greenLeft2View.leadingAnchor.constraint(equalTo: redLeftView.leadingAnchor),
      greenLeft2View.heightAnchor.constraint(equalTo: redLeftView.heightAnchor),
      greenLeft2View.trailingAnchor.constraint(equalTo: redLeftView.trailingAnchor),
      
      greenLeft1View.topAnchor.constraint(equalTo: greenLeft2View.bottomAnchor, constant: barMargin),
      greenLeft1View.leadingAnchor.constraint(equalTo: redLeftView.leadingAnchor),
      greenLeft1View.heightAnchor.constraint(equalTo: redLeftView.heightAnchor),
      greenLeft1View.trailingAnchor.constraint(equalTo: redLeftView.trailingAnchor),
      greenLeft1View.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -barMargin)
    ]
    
    let rightBarConstraints = [
      
      redRightView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: barMargin),
      redRightView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -barMargin),
      redRightView.heightAnchor.constraint(equalToConstant: 40.0),
      redRightView.widthAnchor.constraint(equalToConstant: 120.0),
      
      yellowRight2View.topAnchor.constraint(equalTo: redRightView.bottomAnchor, constant: barMargin),
      yellowRight2View.leadingAnchor.constraint(equalTo: redRightView.leadingAnchor),
      yellowRight2View.heightAnchor.constraint(equalTo: redRightView.heightAnchor),
      yellowRight2View.trailingAnchor.constraint(equalTo: redRightView.trailingAnchor),
      
      yellowRight1View.topAnchor.constraint(equalTo: yellowRight2View.bottomAnchor, constant: barMargin),
      yellowRight1View.leadingAnchor.constraint(equalTo: redRightView.leadingAnchor),
      yellowRight1View.heightAnchor.constraint(equalTo: redRightView.heightAnchor),
      yellowRight1View.trailingAnchor.constraint(equalTo: redRightView.trailingAnchor),
      
      greenRight2View.topAnchor.constraint(equalTo: yellowRight1View.bottomAnchor, constant: barMargin),
      greenRight2View.leadingAnchor.constraint(equalTo: redRightView.leadingAnchor),
      greenRight2View.heightAnchor.constraint(equalTo: redRightView.heightAnchor),
      greenRight2View.trailingAnchor.constraint(equalTo: redRightView.trailingAnchor),
      
      greenRight1View.topAnchor.constraint(equalTo: greenRight2View.bottomAnchor, constant: barMargin),
      greenRight1View.leadingAnchor.constraint(equalTo: redRightView.leadingAnchor),
      greenRight1View.heightAnchor.constraint(equalTo: redRightView.heightAnchor),
      greenRight1View.trailingAnchor.constraint(equalTo: redRightView.trailingAnchor),
      greenRight1View.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -barMargin)
    ]
    
    let labelConstraints = [
      leftChannelLabel.centerXAnchor.constraint(equalTo: redLeftView.centerXAnchor),
      leftChannelLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: standardMargin),
      
      rightChannelLabel.centerXAnchor.constraint(equalTo: redRightView.centerXAnchor),
      rightChannelLabel.firstBaselineAnchor.constraint(equalTo: leftChannelLabel.firstBaselineAnchor),

      audioMainLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
      audioMainLabel.topAnchor.constraint(equalTo: leftChannelLabel.bottomAnchor, constant: standardMargin),
      
      redLabel.centerYAnchor.constraint(equalTo: redLeftView.centerYAnchor),
      redLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
      
      yellow2Label.centerYAnchor.constraint(equalTo: yellowLeft2View.centerYAnchor),
      yellow2Label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
      
      yellow1Label.centerYAnchor.constraint(equalTo: yellowLeft1View.centerYAnchor),
      yellow1Label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
      
      green2Label.centerYAnchor.constraint(equalTo: greenLeft2View.centerYAnchor),
      green2Label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
      
      green1Label.centerYAnchor.constraint(equalTo: greenLeft1View.centerYAnchor),
      green1Label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
    ]
    
    let _ = [containerConstraints, leftBarConstraints, rightBarConstraints, labelConstraints].map{ $0.map{ $0.isActive = true } }
  }
  
  
  // MARK: - Define Your Views Here
  
  // ex:
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
  
  
  // Green
  internal lazy var greenLeft1View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarGreen
    return view
  }()
  
  internal lazy var greenRight1View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarGreen
    return view
  }()
  
  internal lazy var greenLeft2View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarGreen
    return view
  }()
  
  internal lazy var greenRight2View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarGreen
    return view
  }()
  
  
  // Yellow
  internal lazy var yellowLeft1View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarYellow
    return view
  }()
  
  internal lazy var yellowLeft2View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarYellow
    return view
  }()
  
  internal lazy var yellowRight1View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarYellow
    return view
  }()
  
  internal lazy var yellowRight2View: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarYellow
    return view
  }()
  
  
  // Red
  internal lazy var redLeftView: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarRed
    return view
  }()
  
  internal lazy var redRightView: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarRed
    return view
  }()
  
  
  // Container
  internal lazy var containerView: UIView = {
    let view: UIView = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = self.soundBarGray
    return view
  }()
  
  
  // Labels
  internal lazy var leftChannelLabel: UILabel = {
    let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Left"
    label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
    label.textColor = .white
    return label
  }()
  
  internal lazy var rightChannelLabel: UILabel = {
    let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Right"
    label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
    label.textColor = .white
    return label
  }()
  
  internal lazy var audioMainLabel: UILabel = {
    let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Audio Channels"
    label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
    label.textColor = .white
    return label
  }()
  
  internal lazy var redLabel: UILabel = {
  let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "5"
    label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
  return label
  }()
  
  internal lazy var yellow2Label: UILabel = {
  let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "4"
    label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
  return label
  }()
  
  internal lazy var yellow1Label: UILabel = {
  let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "3"
    label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
  return label
  }()
  
  internal lazy var green2Label: UILabel = {
  let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "2"
    label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
  return label
  }()
  
  internal lazy var green1Label: UILabel = {
  let label: UILabel = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "1"
    label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
  return label
  }()
}
