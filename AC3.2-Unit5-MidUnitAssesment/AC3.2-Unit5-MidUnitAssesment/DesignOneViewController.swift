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
    view.addSubview(grayView)
    five.text = "5"
    four.text = "4"
    three.text = "3"
    two.text = "2"
    one.text = "1"
    view.addSubview(five)
    view.addSubview(four)
    view.addSubview(three)
    view.addSubview(two)
    view.addSubview(one)
    view.addSubview(five1View)
    view.addSubview(five2View)
    view.addSubview(four1View)
    view.addSubview(four2View)
    view.addSubview(three1View)
    view.addSubview(three2View)
    view.addSubview(two1View)
    view.addSubview(two2View)
    view.addSubview(one1View)
    view.addSubview(one2View)
    view.addSubview(left)
    view.addSubview(right)
    view.addSubview(audio)
    left.text = "left"
    left.textColor = .white
    right.text = "right"
    right.textColor = .white
    audio.text = "Audio Channels"
    audio.textColor = .white
    audio.font = UIFont.systemFont(ofSize: 30)
    }
  
  
  func configureConstraints() {
    // Add Constraints Here
    let _ =  [
        grayView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8.0),
        grayView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0),
        grayView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0),
        grayView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100.0)
        ].map { $0.isActive = true }
    
    let labels = [one, two, three, four, five, audio]
    for each in labels {
        each.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        each.translatesAutoresizingMaskIntoConstraints = false
    }
    
    let _ = [
        five.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 80.0),
        four.topAnchor.constraint(equalTo: five.bottomAnchor, constant: 80.0),
        three.topAnchor.constraint(equalTo: four.bottomAnchor, constant: 80.0),
        two.topAnchor.constraint(equalTo: three.bottomAnchor, constant: 80.0),
        one.topAnchor.constraint(equalTo: two.bottomAnchor, constant: 80.0),
        ].map { $0.isActive = true }
    
    let bars = [five1View, five2View, four1View, four2View, three1View, three2View, two1View, two2View, one1View, one2View]
    
    for each in bars {
        each.widthAnchor.constraint(equalToConstant: 130.0).isActive = true
        each.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
    }
    
    let _ = [
        five1View.centerYAnchor.constraint(equalTo: five.centerYAnchor),
        five1View.trailingAnchor.constraint(equalTo: five.leadingAnchor, constant: -48.0),
        five2View.centerYAnchor.constraint(equalTo: five1View.centerYAnchor),
        five2View.leadingAnchor.constraint(equalTo: five.trailingAnchor, constant: 48.0)
        ].map { $0.isActive = true }
    
    let _ = [
        four1View.centerYAnchor.constraint(equalTo: four.centerYAnchor),
        four1View.leadingAnchor.constraint(equalTo: five1View.leadingAnchor),
        four2View.centerYAnchor.constraint(equalTo: four.centerYAnchor),
        four2View.leadingAnchor.constraint(equalTo: five2View.leadingAnchor),
        
        three1View.centerYAnchor.constraint(equalTo: three.centerYAnchor),
        three1View.leadingAnchor.constraint(equalTo: five1View.leadingAnchor),
        three2View.centerYAnchor.constraint(equalTo: three.centerYAnchor),
        three2View.leadingAnchor.constraint(equalTo: five2View.leadingAnchor),
        
        two1View.centerYAnchor.constraint(equalTo: two.centerYAnchor),
        two1View.leadingAnchor.constraint(equalTo: five1View.leadingAnchor),
        two2View.centerYAnchor.constraint(equalTo: two.centerYAnchor),
        two2View.leadingAnchor.constraint(equalTo: five2View.leadingAnchor),
        
        one1View.centerYAnchor.constraint(equalTo: one.centerYAnchor),
        one1View.leadingAnchor.constraint(equalTo: five1View.leadingAnchor),
        one2View.centerYAnchor.constraint(equalTo: one.centerYAnchor),
        one2View.leadingAnchor.constraint(equalTo: five2View.leadingAnchor)
        ].map { $0.isActive = true }
   
    let bottom = [left, right]
    
    for each in bottom {
        each.translatesAutoresizingMaskIntoConstraints = false
        each.topAnchor.constraint(equalTo: grayView.bottomAnchor).isActive = true
    }
    audio.translatesAutoresizingMaskIntoConstraints = false

    let _ = [
        left.centerXAnchor.constraint(equalTo: five1View.centerXAnchor),
        right.centerXAnchor.constraint(equalTo: five2View.centerXAnchor),
        audio.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -18.0)
        ].map { $0.isActive = true }
    
  }
  
  
  // MARK: - Define Your Views Here
    lazy var grayView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var five1View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var five2View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var four1View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var four2View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var three1View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var three2View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var two1View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var two2View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var one1View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var one2View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let five = UILabel()
    let four = UILabel()
    let three = UILabel()
    let two = UILabel()
    let one = UILabel()
    let left = UILabel()
    let right = UILabel()
    let audio = UILabel()

}
