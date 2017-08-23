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
  
    //Large View
    let largeView = UIView()
    
    //Number Label
    
    var one: UILabel!
    var two: UILabel!
    var three: UILabel!
    var four: UILabel!
    var five: UILabel!
    
    //Labels in Between
    var redBarOne: UILabel!
    var redBarTwo: UILabel!
    
    var yellowBarOne: UILabel!
    var yellowBarTwo: UILabel!
    
    var yellowBarThree: UILabel!
    var yellowBarFour: UILabel!
    
    var greenBarOne: UILabel!
    var greenBarTwo: UILabel!
    
    var greenBarThree: UILabel!
    var greenBarFour: UILabel!
    
    //Bellow Bottons
    var rightBotton = UIButton(type: UIButtonType.system)
    var leftBotton = UIButton(type: UIButtonType.system)
    
    var AudioChannels = UIButton(type: UIButtonType.system)

    
  // MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.edgesForExtendedLayout = []
    self.view.backgroundColor = .black
    
    self.setupViewHierarchy()
    self.configureConstraints()
    self.title = titleForCell
    
    //Large Gray View
    self.view.addSubview(largeView)
    largeView.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    self.largeView.translatesAutoresizingMaskIntoConstraints = false
    
    largeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
    largeView.topAnchor.constraint(equalTo:  view.topAnchor, constant: 8).isActive = true
    largeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    largeView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
    
    
    //Number Label 
    
    self.five = UILabel(frame: CGRect(x: 174, y: 51, width: 45, height: 45))
    self.five.text = String("5")
    largeView.addSubview(five)
    
    self.four = UILabel(frame: CGRect(x: 174, y: 136, width: 45, height: 45))
    self.four.text = String("4")
    largeView.addSubview(four)
    
    
    self.three = UILabel(frame: CGRect(x: 174, y: 221, width: 45, height: 45))
    self.three.text = String("3")
    largeView.addSubview(three)
    
    self.two = UILabel(frame: CGRect(x: 174, y: 306, width: 45, height: 45))
    self.two.text = String("2")
    largeView.addSubview(two)
    
    
    self.one = UILabel(frame: CGRect(x: 174, y: 391, width: 45, height: 45))
    self.one.text = String("1")
    largeView.addSubview(one)
    
    
    
    
    
    //Labels in between
    self.redBarOne = UILabel(frame: CGRect(x: 60, y: 50, width: 110, height: 40))
    self.redBarOne.backgroundColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
    largeView.addSubview(redBarOne)
    
    self.redBarTwo = UILabel(frame: CGRect(x: 190, y: 50, width: 110, height: 40))
    self.redBarTwo.backgroundColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
    largeView.addSubview(redBarTwo)
    
    self.yellowBarOne = UILabel(frame: CGRect(x: 60, y: 135, width: 110, height: 40))
    self.yellowBarOne.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    largeView.addSubview(yellowBarOne)
    
    self.yellowBarTwo = UILabel(frame: CGRect(x: 190, y: 135, width: 110, height: 40))
    self.yellowBarTwo.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    largeView.addSubview(yellowBarTwo)
    
    
    //not done yet
    self.yellowBarThree = UILabel(frame: CGRect(x: 60, y: 220, width: 110, height: 40))
    self.yellowBarThree.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    largeView.addSubview(yellowBarThree)
    
    self.yellowBarFour = UILabel(frame: CGRect(x: 190, y: 220, width: 110, height: 40))
    self.yellowBarFour.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    largeView.addSubview(yellowBarFour)
    
    self.greenBarOne = UILabel(frame: CGRect(x: 60, y: 305, width: 110, height: 40))
    self.greenBarOne.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    largeView.addSubview(greenBarOne)
    
    self.greenBarTwo = UILabel(frame: CGRect(x: 190, y: 305, width: 110, height: 40))
    self.greenBarTwo.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    largeView.addSubview(greenBarTwo)
    
    self.greenBarThree = UILabel(frame: CGRect(x: 60, y: 390, width: 110, height: 40))
    self.greenBarThree.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    largeView.addSubview(greenBarThree)
    
    self.greenBarFour = UILabel(frame: CGRect(x: 190, y: 390, width: 110, height: 40))
    self.greenBarFour.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    largeView.addSubview(greenBarFour)
    
    
    
    
    
    
    
    
    
    

    
    //Buttom Bottons
    self.view.addSubview(rightBotton)
    self.view.addSubview(leftBotton)
    self.view.addSubview(AudioChannels)
    
    self.rightBotton.setTitle("Right", for: .normal)
    self.leftBotton.setTitle("Left", for: .normal)
    self.AudioChannels.setTitle("Audio Channels", for: .normal)
    self.rightBotton.setTitleColor(.white, for: .normal)
    self.leftBotton.setTitleColor(.white, for: .normal)
    self.AudioChannels.setTitleColor(.white, for: .normal)
    
    
    self.rightBotton.translatesAutoresizingMaskIntoConstraints = false
    self.leftBotton.translatesAutoresizingMaskIntoConstraints = false
    self.AudioChannels.translatesAutoresizingMaskIntoConstraints = false
    
    leftBotton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60).isActive = true
    leftBotton.bottomAnchor.constraint(equalTo: AudioChannels.topAnchor, constant: -8).isActive = true
    
    rightBotton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
    rightBotton.bottomAnchor.constraint(equalTo: AudioChannels.topAnchor, constant: -8).isActive = true
    
    AudioChannels.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    AudioChannels.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8).isActive = true
  }
  
  
  func setupViewHierarchy() {
    // Add Views Here
  }
  
  
  func configureConstraints() {
    // Add Constraints Here
  }
  
  
  // MARK: - Define Your Views Here
  
  // ex: 
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
  

}
