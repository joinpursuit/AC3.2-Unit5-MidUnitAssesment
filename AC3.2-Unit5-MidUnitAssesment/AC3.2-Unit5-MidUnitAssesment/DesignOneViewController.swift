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
    
    //Containers
    self.view.addSubview(grayContainer)
    
    //Text Labels
    self.view.addSubview(mainLabel)
    self.view.addSubview(leftSubLabel)
    self.view.addSubview(rightSubLabel)
    
    //Green Views
    self.grayContainer.addSubview(leftGreen1)
    self.grayContainer.addSubview(leftGreen2)
    self.grayContainer.addSubview(rightGreen1)
    self.grayContainer.addSubview(rightGreen2)
    
    //Yellow Views
    self.grayContainer.addSubview(leftYellow1)
    self.grayContainer.addSubview(rightYellow1)
    self.grayContainer.addSubview(leftYellow2)
    self.grayContainer.addSubview(rightYellow2)
    
    //Red Views
    self.grayContainer.addSubview(leftRedBar)
    self.grayContainer.addSubview(rightRedBar)
    
    //Number Labels
    self.grayContainer.addSubview(numberOneLabel)
    self.grayContainer.addSubview(numberTwoLabel)
    self.grayContainer.addSubview(numberThreeLabel)
    self.grayContainer.addSubview(numberFourLabel)
    self.grayContainer.addSubview(numberFiveLabel)
    
  }
  
  
  func configureConstraints() {
    // Add Constraints Here
    setupGrayContainerConstraints()
    
    setupNumberLabelConstraints()
    
    setupGreenBarsConstraints()
    setupYellowBarsConstraints()
    setupRedBarsConstraints()
    
    setupMainLabelConstraints()
    setupSubLabelContstraints()
  }
  
  
  // MARK: - Define Your Views Here
  
  // ex: 
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
    lazy var mainLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Audio Channels"
        view.font = UIFont(descriptor: UIFontDescriptor(), size: self.mainLabelFontSize)
        view.backgroundColor = .clear
        view.textAlignment = .center
        view.textColor = .white
        
        return view
    }()
    
    lazy var leftSubLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Left"
        view.font = UIFont(descriptor: UIFontDescriptor(), size: self.subLabelFontSize)
        view.backgroundColor = .clear
        view.textAlignment = .center
        view.textColor = .white
        
        return view
    }()
    
    lazy var rightSubLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Right"
        view.font = UIFont(descriptor: UIFontDescriptor(), size: self.subLabelFontSize)
        view.backgroundColor = .clear
        view.textAlignment = .center
        view.textColor = .white
        
        return view
    }()
    
    lazy var numberOneLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "1"
        view.textAlignment = .center
        view.backgroundColor = .clear
        
        return view
    }()
    
    lazy var numberTwoLabel: UILabel = {
            let view = UILabel()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.text = "2"
            view.textAlignment = .center
            view.backgroundColor = .clear
            
            return view
    }()
    
    lazy var numberThreeLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "3"
        view.textAlignment = .center
        view.backgroundColor = .clear
        
        return view
    }()
    
    lazy var numberFourLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "4"
        view.textAlignment = .center
        view.backgroundColor = .clear
        
        return view
    }()
    
    lazy var numberFiveLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "5"
        view.textAlignment = .center
        view.backgroundColor = .clear
        
        return view
    }()
    
    lazy var leftGreen1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarGreen
        
        return view
    }()
    
    lazy var leftGreen2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarGreen
        
        return view
    }()
    
    lazy var rightGreen1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarGreen
        
        return view
    }()

    lazy var rightGreen2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarGreen
        
        return view
    }()
    
    lazy var leftYellow1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarYellow
        
        return view
    }()
    
    lazy var leftYellow2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarYellow
        
        return view
    }()
    
    lazy var rightYellow1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarYellow
        
        return view
    }()
    
    lazy var rightYellow2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarYellow
        
        return view
    }()
    
    lazy var leftRedBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarRed
        
        return view
    }()
    
    lazy var rightRedBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarRed
        
        return view
    }()

    
    lazy var grayContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = self.soundBarGray
        
        return view
    }()
    
    func setupMainLabelConstraints() {
        let _ = [
            self.mainLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -30),
            self.mainLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            //self.mainLabel.heightAnchor.constraint(equalToConstant: self.mainLabelFontSize)
            ].map { $0.isActive = true }
    }
    
    func setupSubLabelContstraints() {
        let _ = [
            self.leftSubLabel.bottomAnchor.constraint(equalTo: self.mainLabel.topAnchor, constant: -35),
            self.leftSubLabel.centerXAnchor.constraint(equalTo: self.leftGreen1.centerXAnchor)
            ].map { $0.isActive = true }
        
        let _ = [
            self.rightSubLabel.bottomAnchor.constraint(equalTo: self.mainLabel.topAnchor, constant: -35),
            self.rightSubLabel.centerXAnchor.constraint(equalTo: self.rightGreen1.centerXAnchor)
            ].map { $0.isActive = true }
    }
    
    func setupGrayContainerConstraints() {
        let _ = [
            self.grayContainer.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7),
            self.grayContainer.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95),
            self.grayContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 75),
            self.grayContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            ].map { $0.isActive = true }
    }
    
    func setupNumberLabelConstraints() {
        let _ = [
            self.numberOneLabel.centerXAnchor.constraint(equalTo: self.grayContainer.centerXAnchor),
            self.numberOneLabel.bottomAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: -50)
            ].map { $0.isActive = true }
        
        let _ = [
            self.numberTwoLabel.centerXAnchor.constraint(equalTo: self.grayContainer.centerXAnchor),
            self.numberTwoLabel.bottomAnchor.constraint(equalTo: self.numberOneLabel.topAnchor, constant: self.grayContainer.bounds.height / 5 - 16 * 5)
            ].map { $0.isActive = true }
        
        let _ = [
            self.numberThreeLabel.centerXAnchor.constraint(equalTo: self.grayContainer.centerXAnchor),
            self.numberThreeLabel.bottomAnchor.constraint(equalTo: self.numberTwoLabel.topAnchor, constant: self.grayContainer.bounds.height / 5 - 16 * 5)
            ].map { $0.isActive = true }
        
        let _ = [
            self.numberFourLabel.centerXAnchor.constraint(equalTo: self.grayContainer.centerXAnchor),
            self.numberFourLabel.bottomAnchor.constraint(equalTo: self.numberThreeLabel.topAnchor, constant: self.grayContainer.bounds.height / 5 - 16 * 5)
            ].map { $0.isActive = true }
        
        let _ = [
            self.numberFiveLabel.centerXAnchor.constraint(equalTo: self.grayContainer.centerXAnchor),
            self.numberFiveLabel.bottomAnchor.constraint(equalTo: self.numberFourLabel.topAnchor, constant: self.grayContainer.bounds.height / 5 - 16 * 5)
            ].map { $0.isActive = true }
    }
    

    
    func setupGreenBarsConstraints() {
        let _ = [
            self.leftGreen1.trailingAnchor.constraint(equalTo: self.numberOneLabel.leadingAnchor, constant: -15),
            self.leftGreen1.bottomAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: -45),
            self.leftGreen1.widthAnchor.constraint(equalToConstant: 125),
            self.leftGreen1.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
        
        let _ = [
            self.leftGreen2.trailingAnchor.constraint(equalTo: self.numberTwoLabel.leadingAnchor, constant: -15),
            self.leftGreen2.bottomAnchor.constraint(equalTo: self.leftGreen1.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.leftGreen2.widthAnchor.constraint(equalToConstant: 125),
            self.leftGreen2.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
        
        let _ = [
            self.rightGreen1.leadingAnchor.constraint(equalTo: self.numberOneLabel.trailingAnchor, constant: 15),
            self.rightGreen1.bottomAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: -45),
            self.rightGreen1.widthAnchor.constraint(equalToConstant: 125),
            self.rightGreen1.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
        
        let _ = [
            self.rightGreen2.leadingAnchor.constraint(equalTo: self.numberTwoLabel.trailingAnchor, constant: 15),
            self.rightGreen2.bottomAnchor.constraint(equalTo: self.rightGreen1.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.rightGreen2.widthAnchor.constraint(equalToConstant: 125),
            self.rightGreen2.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
    }
    
    func setupYellowBarsConstraints() {
        let _ = [
            self.leftYellow1.trailingAnchor.constraint(equalTo: self.numberThreeLabel.leadingAnchor, constant: -15),
            self.leftYellow1.bottomAnchor.constraint(equalTo: self.leftGreen2.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.leftYellow1.widthAnchor.constraint(equalToConstant: 125),
            self.leftYellow1.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
        
        let _ = [
            self.rightYellow1.leadingAnchor.constraint(equalTo: self.numberThreeLabel.trailingAnchor, constant: 15),
            self.rightYellow1.bottomAnchor.constraint(equalTo: self.rightGreen2.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.rightYellow1.widthAnchor.constraint(equalToConstant: 125),
            self.rightYellow1.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
        
        let _ = [
            self.leftYellow2.trailingAnchor.constraint(equalTo: self.numberFourLabel.leadingAnchor, constant: -15),
            self.leftYellow2.bottomAnchor.constraint(equalTo: self.leftYellow1.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.leftYellow2.widthAnchor.constraint(equalToConstant: 125),
            self.leftYellow2.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
        
        let _ = [
            self.rightYellow2.leadingAnchor.constraint(equalTo: self.numberFourLabel.trailingAnchor, constant: 15),
            self.rightYellow2.bottomAnchor.constraint(equalTo: self.rightYellow1.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.rightYellow2.widthAnchor.constraint(equalToConstant: 125),
            self.rightYellow2.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
    }
    
    func setupRedBarsConstraints() {
        let _ = [
            self.leftRedBar.trailingAnchor.constraint(equalTo: self.numberFiveLabel.leadingAnchor, constant: -15),
            self.leftRedBar.bottomAnchor.constraint(equalTo: self.leftYellow2.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.leftRedBar.widthAnchor.constraint(equalToConstant: 125),
            self.leftRedBar.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
        
        let _ = [
            self.rightRedBar.leadingAnchor.constraint(equalTo: self.numberFiveLabel.trailingAnchor, constant: 15),
            self.rightRedBar.bottomAnchor.constraint(equalTo: self.rightYellow2.topAnchor, constant: self.grayContainer.bounds.height / 5 - 11.5 * 5),
            self.rightRedBar.widthAnchor.constraint(equalToConstant: 125),
            self.rightRedBar.heightAnchor.constraint(equalToConstant: 40)
            ].map { $0.isActive = true }
    }
}
