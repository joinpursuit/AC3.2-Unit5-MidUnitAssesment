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
    self.view.addSubview(grayContainer)
    self.view.addSubview(oneLabel)
    self.view.addSubview(twoLabel)
    self.view.addSubview(threeLabel)
    self.view.addSubview(fourLabel)
    self.view.addSubview(fiveLabel)
    self.view.addSubview(rightLabel)
    self.view.addSubview(leftLabel)
    self.view.addSubview(audioLabel)
    self.view.addSubview(lrStack)
    self.view.addSubview(numStack)
    self.view.addSubview(colorStack1)
    self.view.addSubview(colorStack2)

    
    lrStack.addArrangedSubview(leftLabel)
    lrStack.addArrangedSubview(rightLabel)
    
    numStack.addArrangedSubview(fiveLabel)
    numStack.addArrangedSubview(fourLabel)
    numStack.addArrangedSubview(threeLabel)
    numStack.addArrangedSubview(twoLabel)
    numStack.addArrangedSubview(oneLabel)
    
   
    let colorViews1 = [peachView, beigeView1, beigeView2, greenView1, greenView2]
    for view in colorViews1 {
        colorStack1.addArrangedSubview(view)
    }
    
    let colorViews2 = [peachView2, beigeView12, beigeView22, greenView12, greenView22]
    for view in colorViews2 {
        colorStack2.addArrangedSubview(view)
    }
    
    
    
    
    
  }
  
  
  func configureConstraints() {
    // Add Constraints Here
    let grayContainerConstraints = [
        grayContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        grayContainer.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        grayContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.78),
        grayContainer.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.95)
    ]
    
    let lrStackConstraints = [
        lrStack.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 8.0),
        lrStack.widthAnchor.constraint(equalTo: view.widthAnchor)
    ]
    
    let numStackConstraints = [
        numStack.topAnchor.constraint(equalTo: grayContainer.topAnchor),
        numStack.heightAnchor.constraint(equalTo: grayContainer.heightAnchor),
        numStack.centerXAnchor.constraint(equalTo: grayContainer.centerXAnchor)
    ]
    
    let colorStack1Constraints = [
        colorStack1.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 30.0),
        colorStack1.bottomAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: -30.0),
        
        colorStack1.trailingAnchor.constraint(equalTo: numStack.leadingAnchor, constant: -40.0)
        
        ]
    
    
    let colorStack2Constraints = [
        colorStack2.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 30.0),
        colorStack2.bottomAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: -30.0),
        
        colorStack2.leadingAnchor.constraint(equalTo: numStack.trailingAnchor, constant: 40.0)
        
    ]
    
    let audioLabelConstraints = [
        audioLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        audioLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0)
    ]
    
    let _ = [grayContainerConstraints,  audioLabelConstraints, lrStackConstraints, numStackConstraints, colorStack1Constraints, colorStack2Constraints,
        ].map { $0.map { $0.isActive = true }}
  }
  
  
  // MARK: - Define Your Views Here
  
  // ex:(255,218,185)
    
    let peachView: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 253/255, green: 153/255, blue: 153/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 10.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let beigeView1: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 10.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let beigeView2: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let greenView1: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 51/255, green: 204/255, blue: 153/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let greenView2: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 51/255, green: 204/255, blue: 153/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let peachView2: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 253/255, green: 153/255, blue: 153/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 10.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let beigeView12: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 10.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let beigeView22: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 255/255, green: 218/255, blue: 185/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let greenView12: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 51/255, green: 204/255, blue: 153/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    let greenView22: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 51/255, green: 204/255, blue: 153/255, alpha: 1.0)
        view.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        view.widthAnchor.constraint(equalToConstant: 100.0).isActive = true
        return view
    }()
    
    
    
    
     let grayContainer: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1.0)
        return view
    }()
  
    let oneLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "1"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let twoLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "2"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let threeLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "3"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fourLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "4"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let fiveLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "5"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let audioLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Audio Channels"
        label.font = label.font.withSize(20)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let lrStack: UIStackView = {
        
        let stack: UIStackView = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
      
        
       return stack
    }()
    
   
    
    let numStack: UIStackView = {
        
        let stack: UIStackView = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        
        return stack
    }()
    
    let colorStack1: UIStackView = {
        
        let stack: UIStackView = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 65
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        
        return stack
    }()
    
    let colorStack2: UIStackView = {
        
        let stack: UIStackView = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 65
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        
        return stack
    }()
    
    let rightLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Right"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        
        return label
    }()
    
    let leftLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Left"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
  // let grayContainer: UIView = ... your code here ...
  // let leftGreen1: UIView = ... your code here ...
  // let leftGreen2: UIView = ... your code here ...
  //
  

}
