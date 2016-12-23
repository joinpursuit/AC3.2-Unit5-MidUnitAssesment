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
    
    self.grayContainer.accessibilityIdentifier = "Gray Container"
    self.rightLabel.accessibilityIdentifier = "Right Label"
    self.leftLabel.accessibilityIdentifier = "Left Label"
    self.centerChannelLabel.accessibilityIdentifier = "Center Label"
    self.leftRed.accessibilityIdentifier = "Left Red"
    self.rightRed.accessibilityIdentifier = "Right Red"
  }
  
  func setupViewHierarchy() {
    self.view.addSubview(self.grayContainer)
    self.view.addSubview(self.leftLabel)
    self.view.addSubview(self.rightLabel)
    self.view.addSubview(self.centerChannelLabel)
    self.grayContainer.addSubview(leftRed)
    self.grayContainer.addSubview(rightRed)
    self.grayContainer.addSubview(leftOrange1)
    self.grayContainer.addSubview(rightOrange1)
    self.grayContainer.addSubview(leftOrange2)
    self.grayContainer.addSubview(rightOrange2)
    self.grayContainer.addSubview(leftGreen1)
    self.grayContainer.addSubview(rightGreen1)
    self.grayContainer.addSubview(leftGreen2)
    self.grayContainer.addSubview(rightGreen2)
    // Add Views Here
  }
  
  func configureConstraints() {
    let _ = [
        self.grayContainer.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
        self.grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
        self.grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
        //self.grayContainer.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.leftLabel.topAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: 8.0),
        self.leftLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
        self.leftLabel.bottomAnchor.constraint(equalTo: self.centerChannelLabel.topAnchor, constant: -8.0)
    ].map {$0.isActive = true}
    
    let _ = [
        self.rightLabel.topAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: 8.0),
        self.rightLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
        self.rightLabel.bottomAnchor.constraint(equalTo: self.centerChannelLabel.topAnchor, constant: -8.0)
    ].map {$0.isActive = true}
    
    let _ = [
        self.centerChannelLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0),
        self.centerChannelLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
        self.centerChannelLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 8.0)
    ].map {$0.isActive = true}
    
    let _ = [
        self.leftRed.topAnchor.constraint(equalTo: self.grayContainer.topAnchor, constant: 8.0),
        self.leftRed.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant:8.0)
    ].map {$0.isActive = true}
    
    let _ = [
        self.rightRed.topAnchor.constraint(equalTo: self.grayContainer.topAnchor, constant: 8.0),
        self.rightRed.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0)
    ].map {$0.isActive = true}
    
    let _ = [
        self.leftOrange1.topAnchor.constraint(equalTo: self.leftRed.bottomAnchor, constant: 8.0),
        self.leftOrange1.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant:8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.rightOrange1.topAnchor.constraint(equalTo: self.rightRed.bottomAnchor, constant: 8.0),
        self.rightOrange1.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.leftOrange2.topAnchor.constraint(equalTo: self.leftOrange1.bottomAnchor, constant: 8.0),
        self.leftOrange2.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant:8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.rightOrange2.topAnchor.constraint(equalTo: self.rightOrange1.bottomAnchor, constant: 8.0),
        self.rightOrange2.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.leftGreen1.topAnchor.constraint(equalTo: self.leftOrange1.bottomAnchor, constant: 8.0),
        self.leftGreen1.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant:8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.rightGreen1.topAnchor.constraint(equalTo: self.rightOrange1.bottomAnchor, constant: 8.0),
        self.rightGreen1.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.leftGreen2.topAnchor.constraint(equalTo: self.leftGreen1.bottomAnchor, constant: 8.0),
        self.leftGreen2.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant:8.0)
        ].map {$0.isActive = true}
    
    let _ = [
        self.rightGreen2.topAnchor.constraint(equalTo: self.rightGreen1.bottomAnchor, constant: 8.0),
        self.rightGreen2.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0)
        ].map {$0.isActive = true}
    
    
    // Add Constraints Here
  }
  
  // MARK: - Define Your Views Here
  
  // ex: 
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
    let grayContainer: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor.gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftRed: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let rightRed: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftOrange1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftOrange2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let rightOrange1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let rightOrange2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftGreen1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let rightGreen1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftGreen2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let rightGreen2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.heightAnchor.constraint(equalToConstant: 40).isActive = true
        view.widthAnchor.constraint(equalToConstant: 150).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let leftLabel: UILabel = {
        let label = UILabel()
        label.text = "Left"
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rightLabel: UILabel = {
        let label = UILabel()
        label.text = "Right"
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let centerChannelLabel: UILabel = {
        let label = UILabel()
        label.text = "Audio Channels"
        label.textAlignment = .center
        label.textColor = UIColor.lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

}
