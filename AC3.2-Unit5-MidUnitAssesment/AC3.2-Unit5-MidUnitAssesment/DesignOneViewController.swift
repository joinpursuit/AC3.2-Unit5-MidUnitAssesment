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
    
    
    self.view.addSubview(left1View)
    self.view.addSubview(left2View)
    self.view.addSubview(left3View)
    self.view.addSubview(left4View)
    self.view.addSubview(left5View)
    self.view.addSubview(right1View)
    self.view.addSubview(right2View)
    self.view.addSubview(right3View)
    self.view.addSubview(right4View)
    self.view.addSubview(right5View)
    
    self.left1View.translatesAutoresizingMaskIntoConstraints = false
    self.left2View.translatesAutoresizingMaskIntoConstraints = false
    self.left3View.translatesAutoresizingMaskIntoConstraints = false
    self.left4View.translatesAutoresizingMaskIntoConstraints = false
    self.left5View.translatesAutoresizingMaskIntoConstraints = false
    self.right1View.translatesAutoresizingMaskIntoConstraints = false
    self.right2View.translatesAutoresizingMaskIntoConstraints = false
    self.right3View.translatesAutoresizingMaskIntoConstraints = false
    self.right4View.translatesAutoresizingMaskIntoConstraints = false
    self.right5View.translatesAutoresizingMaskIntoConstraints = false
    
    let _ = [
        left3View.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
        left3View.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor),
        left3View.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.25),
        left3View.heightAnchor.constraint(equalTo: left3View.widthAnchor)
        ].map { $0.isActive = true }
  }
  
  
  func configureConstraints() {
    // Add Constraints Here
  }
  
  
  // MARK: - Define Your Views Here
  
    lazy var num1Label: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
        return label
    }()
    
    lazy var num2Label: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
        return label
    }()
    
    lazy var num3Label: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
        return label
    }()
    
    lazy var num4Label: UILabel = {
        let label = UILabel()
        label.text = "4"
        label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
        return label
    }()
    
    lazy var num5Label: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
        return label
    }()
    
    lazy var grayContainder: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGray
        return view
    }()
    
    
    lazy var left1View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        return view
    }()
    
    lazy var left2View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        return view
    }()
    
    lazy var left3View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        return view
    }()
    
    lazy var left4View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        return view
    }()
    
    lazy var left5View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarRed
        return view
    }()
    
    
    lazy var right1View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        return view
    }()
    
    lazy var right2View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGreen
        return view
    }()
    
    lazy var right3View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        return view
    }()
    
    lazy var right4View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarYellow
        return view
    }()
    
    lazy var right5View: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarRed
        return view
    }()
    
    
    

}
