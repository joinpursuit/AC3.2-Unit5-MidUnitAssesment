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

        let nonBarViews = [grayContainer, leftLabel, rightLabel, audioChannelsLabel, num5Label, num4Label, num3Label, num2Label, num1Label]
        
        for nbv in nonBarViews {
            self.view.addSubview(nbv)
            nbv.translatesAutoresizingMaskIntoConstraints = false
        }
        
        let audioChannelsConstraints = [
            audioChannelsLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20.0),
            audioChannelsLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ]
        
        let leftLabelConstraints = [
            leftLabel.bottomAnchor.constraint(equalTo: audioChannelsLabel.topAnchor, constant: -20.0),
            leftLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -100.0)
        ]
        
        let rightLabelConstraints = [
            rightLabel.firstBaselineAnchor.constraint(equalTo: leftLabel.firstBaselineAnchor),
            rightLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 100.0)
        ]
        
        let grayContainerConstraints = [
            grayContainer.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: self.standardMargin),
            grayContainer.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: self.standardMargin),
            grayContainer.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -self.standardMargin),
            grayContainer.bottomAnchor.constraint(equalTo: leftLabel.topAnchor, constant: -self.standardMargin)
        ]
        
        setUpBarViews()
        
        let num5LabelConstraints = [
            num5Label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num5Label.centerYAnchor.constraint(equalTo: self.barViews[0].centerYAnchor)
        ]
        
        let num4LabelConstraints = [
            num4Label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num4Label.centerYAnchor.constraint(equalTo: self.barViews[1].centerYAnchor)
        ]
        
        let num3LabelConstraints = [
            num3Label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num3Label.centerYAnchor.constraint(equalTo: self.barViews[2].centerYAnchor)
        ]
        
        let num2LabelConstraints = [
            num2Label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num2Label.centerYAnchor.constraint(equalTo: self.barViews[3].centerYAnchor)
        ]
        
        let num1LabelConstraints = [
            num1Label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            num1Label.centerYAnchor.constraint(equalTo: self.barViews[4].centerYAnchor)
        ]
        
        let _ = [
            audioChannelsConstraints,
            leftLabelConstraints,
            rightLabelConstraints,
            grayContainerConstraints,
            num5LabelConstraints,
            num4LabelConstraints,
            num3LabelConstraints,
            num2LabelConstraints,
            num1LabelConstraints,
            ].map{ $0.map{ $0.isActive = true } }
        

    }
    
    func configureConstraints() {
        // Add Constraints Here
    }
    
    
    // MARK: - Define Your Views Here
    
    lazy var grayContainer: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = self.soundBarGray
        return view
    }()
    
    lazy var leftLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.textColor = .white
        label.text = "Left"
        return label
    }()
    
    lazy var rightLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.textColor = .white
        label.text = "Right"
        return label
    }()
    
    lazy var audioChannelsLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.mainLabelFontSize)
        label.textColor = .white
        label.text = "Audio Channels"
        return label
    }()
    
    lazy var num5Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.text = "5"
        return label
    }()
    
    lazy var num4Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.text = "4"
        return label
    }()
    
    lazy var num3Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.text = "3"
        return label
    }()
    
    lazy var num2Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.text = "2"
        return label
    }()
    
    lazy var num1Label: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: self.subLabelFontSize)
        label.text = "1"
        return label
    }()
    
    var barViews = [UIView]()
    
    func setUpBarViews() {
        for i in 0..<10 {
            barViews.append(UIView())
            self.view.addSubview(barViews[i])
            barViews[i].translatesAutoresizingMaskIntoConstraints = false
            barViews[i].backgroundColor = self.soundBarRed
            var constraintsArr = [barViews[i].heightAnchor.constraint(equalToConstant: 35.0)]
            switch i {
            case 0:
                constraintsArr += [
                    barViews[i].leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: self.barMargin),
                    barViews[i].topAnchor.constraint(equalTo: self.grayContainer.topAnchor, constant: self.barMargin),
                    barViews[i].trailingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -16.0),
                ]
                barViews[i].backgroundColor = self.soundBarRed
            case 5:
                constraintsArr += [
                    barViews[i].leadingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 16.0),
                    barViews[i].trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -self.barMargin),
                    barViews[i].topAnchor.constraint(equalTo: self.grayContainer.topAnchor, constant: self.barMargin),
                ]
                barViews[i].backgroundColor = self.soundBarRed
            default:
                constraintsArr +=  [
                    barViews[i].leadingAnchor.constraint(equalTo: self.barViews[i-1].leadingAnchor),
                    barViews[i].topAnchor.constraint(equalTo: self.barViews[i-1].bottomAnchor, constant: self.barMargin),
                    barViews[i].trailingAnchor.constraint(equalTo: self.barViews[i-1].trailingAnchor),
                ]
                switch i {
                case 1, 2, 6, 7:
                    barViews[i].backgroundColor = self.soundBarYellow
                default:
                    barViews[i].backgroundColor = self.soundBarGreen
                }
            }
            _ = constraintsArr.map { $0.isActive = true }
        }
    }
    
}
