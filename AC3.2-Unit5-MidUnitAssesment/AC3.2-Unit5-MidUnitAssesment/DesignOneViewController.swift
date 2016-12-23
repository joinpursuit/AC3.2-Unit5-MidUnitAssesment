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
    let mainViews = [backgroundGreyView, leftSubLabel, rightSubLabel, mainLabel].map{ self.view.addSubview($0) }
    let subViews  = [leftFiveView, fiveLabel, rightFiveView, leftFourView, fourLabel, rightFourView, leftThreeView, threeLabel, rightThreeView, leftTwoView, twoLabel, rightTwoView, leftOneView, oneLabel, rightOneView].map {self.backgroundGreyView.addSubview($0)}
  }
  
  
  func configureConstraints() {
    let mainLabelConstraints = [
        self.mainLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        self.mainLabel.bottomAnchor.constraint(equalTo: self.bottomLayoutGuide.topAnchor, constant: -self.standardMargin)
    ]
    let leftSubViewConstraints = [
        self.leftSubLabel.centerXAnchor.constraint(equalTo: self.leftFiveView.centerXAnchor),
        self.leftSubLabel.topAnchor.constraint(equalTo: self.backgroundGreyView.bottomAnchor, constant: self.standardMargin),
        self.leftSubLabel.bottomAnchor.constraint(equalTo: self.mainLabel.topAnchor, constant: -self.standardMargin)
    ]
    let rightSubviewConstraints = [
        self.rightSubLabel.centerXAnchor.constraint(equalTo: self.rightFiveView.centerXAnchor),
        self.rightSubLabel.topAnchor.constraint(equalTo: self.backgroundGreyView.bottomAnchor, constant: self.standardMargin),
        self.leftSubLabel.bottomAnchor.constraint(equalTo: self.mainLabel.topAnchor, constant: -self.standardMargin)
    ]
    let backgroundGrewViewConstraints = [
        self.backgroundGreyView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: self.standardMargin),
        self.backgroundGreyView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: self.standardMargin),
        self.backgroundGreyView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -self.standardMargin)
    ]
    let leftFiveViewConstraints = [
        self.leftFiveView.topAnchor.constraint(equalTo: self.backgroundGreyView.topAnchor, constant: self.barMargin),
        self.leftFiveView.leadingAnchor.constraint(equalTo: self.backgroundGreyView.leadingAnchor, constant: self.barMargin),
        self.leftFiveView.trailingAnchor.constraint(equalTo: self.fiveLabel.leadingAnchor, constant: -self.standardMargin),
        self.leftFiveView.heightAnchor.constraint(equalTo: self.fiveLabel.heightAnchor, multiplier: 2.0)
    ]
    let fiveLabelConstraints = [
        self.fiveLabel.centerXAnchor.constraint(equalTo: self.backgroundGreyView.centerXAnchor),
        self.fiveLabel.centerYAnchor.constraint(equalTo: self.leftFiveView.centerYAnchor)
    ]
    let rightFiveLabelConstrains = [
        self.rightFiveView.centerYAnchor.constraint(equalTo: self.leftFiveView.centerYAnchor),
        self.rightFiveView.leadingAnchor.constraint(equalTo: self.fiveLabel.trailingAnchor, constant: self.standardMargin),
        self.rightFiveView.widthAnchor.constraint(equalTo: self.leftFiveView.widthAnchor),
        self.rightFiveView.heightAnchor.constraint(equalTo: self.leftFiveView.heightAnchor)
    ]
    let leftFourViewContraints = [
        self.leftFourView.heightAnchor.constraint(equalTo: leftFiveView.heightAnchor),
        self.leftFourView.widthAnchor.constraint(equalTo: leftFiveView.widthAnchor),
        self.leftFourView.centerXAnchor.constraint(equalTo: leftFiveView.centerXAnchor),
        self.leftFourView.topAnchor.constraint(equalTo: leftFiveView.bottomAnchor, constant: self.barMargin)
    ]
    let fourLabelConstraints = [
        self.fourLabel.centerXAnchor.constraint(equalTo: self.backgroundGreyView.centerXAnchor),
        self.fourLabel.centerYAnchor.constraint(equalTo: self.leftFourView.centerYAnchor)
    ]
    let rightFourLabelConstrains = [
        self.rightFourView.centerYAnchor.constraint(equalTo: self.leftFourView.centerYAnchor),
        self.rightFourView.leadingAnchor.constraint(equalTo: self.fiveLabel.trailingAnchor, constant: self.standardMargin),
        self.rightFourView.widthAnchor.constraint(equalTo: self.leftFiveView.widthAnchor),
        self.rightFourView.heightAnchor.constraint(equalTo: self.leftFiveView.heightAnchor)
    ]
    let leftThreeViewContraints = [
        self.leftThreeView.heightAnchor.constraint(equalTo: leftFiveView.heightAnchor),
        self.leftThreeView.widthAnchor.constraint(equalTo: leftFiveView.widthAnchor),
        self.leftThreeView.centerXAnchor.constraint(equalTo: leftFiveView.centerXAnchor),
        self.leftThreeView.topAnchor.constraint(equalTo: leftFourView.bottomAnchor, constant: self.barMargin)
    ]
    let threeLabelConstraints = [
        self.threeLabel.centerXAnchor.constraint(equalTo: self.backgroundGreyView.centerXAnchor),
        self.threeLabel.centerYAnchor.constraint(equalTo: self.leftThreeView.centerYAnchor)
    ]
    let rightThreeLabelConstrains = [
        self.rightThreeView.centerYAnchor.constraint(equalTo: self.leftThreeView.centerYAnchor),
        self.rightThreeView.leadingAnchor.constraint(equalTo: self.fiveLabel.trailingAnchor, constant: self.standardMargin),
        self.rightThreeView.widthAnchor.constraint(equalTo: self.leftFiveView.widthAnchor),
        self.rightThreeView.heightAnchor.constraint(equalTo: self.leftFiveView.heightAnchor)
    ]
    let leftTwoViewContraints = [
        self.leftTwoView.heightAnchor.constraint(equalTo: leftFiveView.heightAnchor),
        self.leftTwoView.widthAnchor.constraint(equalTo: leftFiveView.widthAnchor),
        self.leftTwoView.centerXAnchor.constraint(equalTo: leftFiveView.centerXAnchor),
        self.leftTwoView.topAnchor.constraint(equalTo: leftThreeView.bottomAnchor, constant: self.barMargin)
    ]
    let twoLabelConstraints = [
        self.twoLabel.centerXAnchor.constraint(equalTo: self.backgroundGreyView.centerXAnchor),
        self.twoLabel.centerYAnchor.constraint(equalTo: self.leftTwoView.centerYAnchor)
    ]
    let rightTwoLabelConstrains = [
        self.rightTwoView.centerYAnchor.constraint(equalTo: self.leftTwoView.centerYAnchor),
        self.rightTwoView.leadingAnchor.constraint(equalTo: self.fiveLabel.trailingAnchor, constant: self.standardMargin),
        self.rightTwoView.widthAnchor.constraint(equalTo: self.leftFiveView.widthAnchor),
        self.rightTwoView.heightAnchor.constraint(equalTo: self.leftFiveView.heightAnchor)
    ]
    let leftOneViewContraints = [
        self.leftOneView.heightAnchor.constraint(equalTo: leftFiveView.heightAnchor),
        self.leftOneView.widthAnchor.constraint(equalTo: leftFiveView.widthAnchor),
        self.leftOneView.centerXAnchor.constraint(equalTo: leftFiveView.centerXAnchor),
        self.leftOneView.topAnchor.constraint(equalTo: leftTwoView.bottomAnchor, constant: self.barMargin)
    ]
    let oneLabelConstraints = [
        self.oneLabel.centerXAnchor.constraint(equalTo: self.backgroundGreyView.centerXAnchor),
        self.oneLabel.centerYAnchor.constraint(equalTo: self.leftOneView.centerYAnchor)
    ]
    let rightOneLabelConstrains = [
        self.rightOneView.centerYAnchor.constraint(equalTo: self.leftOneView.centerYAnchor),
        self.rightOneView.leadingAnchor.constraint(equalTo: self.fiveLabel.trailingAnchor, constant: self.standardMargin),
        self.rightOneView.widthAnchor.constraint(equalTo: self.leftFiveView.widthAnchor),
        self.rightOneView.heightAnchor.constraint(equalTo: self.leftFiveView.heightAnchor)
    ]
    _ = [mainLabelConstraints, backgroundGrewViewConstraints, leftSubViewConstraints, rightSubviewConstraints, leftFiveViewConstraints, fiveLabelConstraints, rightFiveLabelConstrains, leftFourViewContraints, fourLabelConstraints, rightFourLabelConstrains, leftThreeViewContraints, threeLabelConstraints, rightThreeLabelConstrains, leftTwoViewContraints, twoLabelConstraints, rightTwoLabelConstrains, leftOneViewContraints, oneLabelConstraints, rightOneLabelConstrains].map { $0.map { $0.isActive = true } }
  }
  
  
  // MARK: - Define Your Views Here
  
  // ex: 
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
  
    lazy var backgroundGreyView: UIView = {
        let view = UIView()
        view.accessibilityIdentifier = "grey"
        view.backgroundColor = self.soundBarGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var leftFiveView: UIView = {
        let view = UIView()
        view.accessibilityIdentifier = "left5"
        view.backgroundColor = self.soundBarRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var fiveLabel: UILabel = {
        let label = UILabel()
        label.accessibilityIdentifier = "5"
        label.text = "5"
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var rightFiveView: UIView = {
        let view = UIView()
        
        view.backgroundColor = self.soundBarRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var leftFourView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var fourLabel: UILabel = {
        let label = UILabel()
        label.text = "4"
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var rightFourView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var leftThreeView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var threeLabel: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var rightThreeView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var leftTwoView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var twoLabel: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var rightTwoView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var leftOneView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var oneLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var rightOneView: UIView = {
        let view = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var leftSubLabel: UILabel = {
        let label = UILabel()
        label.accessibilityIdentifier = "L"
        label.text = "Left"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var rightSubLabel: UILabel = {
        let label = UILabel()
        label.accessibilityIdentifier = "R"
        label.text = "Right"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.accessibilityIdentifier = "AC"
        label.text = "Audio Channels"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}
