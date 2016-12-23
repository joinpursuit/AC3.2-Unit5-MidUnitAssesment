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
        self.edgesForExtendedLayout = .bottom
        
        self.setupViewHierarchy()
        self.configureConstraints()
        self.title = titleForCell
    }
    
    
    func setupViewHierarchy() {
        // Add Views Here
        
        let arr = [
              label5
            , label4
            , label3
            , label2
            , label1
            , redBarFiveLeft
            , yellowBarFourLeft
            , yellowBarThreeLeft
            , greenBarTwoLeft
            , greenBarOneLeft
            , redBarFiveRight
            , yellowBarFourRight
            , yellowBarThreeRight
            , greenBarTwoRight
            , greenBarOneRight
            , greyBG
            , leftLabel
            , centerLabel
            , rightLabel
        ]
        
        for foo in arr {
            self.view.addSubview(foo)
            if foo == greyBG {
                foo.layer.zPosition = 1
            } else {
                switch foo {
                case label1, label2, label3, label4, label5:
                    foo.layer.zPosition = 2001
                default:
                    foo.layer.zPosition = 2000
                }
            }
        }
        
        // styling
        
        // grey
        greyBG.backgroundColor = soundBarGray
        // bottom labels
        leftLabel.textColor = .white
        leftLabel.font = UIFont.systemFont(ofSize: subLabelFontSize)
        leftLabel.text = "Left"
        centerLabel.textColor = .white
        centerLabel.font = UIFont.systemFont(ofSize: mainLabelFontSize)
        centerLabel.text = "Audio Channels"
        rightLabel.textColor = .white
        rightLabel.font = UIFont.systemFont(ofSize: subLabelFontSize)
        rightLabel.text = "Right"
        // 5
        redBarFiveLeft.backgroundColor = soundBarRed
        label5.backgroundColor = soundBarGray
        label5.font = UIFont.systemFont(ofSize: subLabelFontSize)
        label5.text = "5"
        label5.textAlignment = .center
        redBarFiveRight.backgroundColor = soundBarRed
        // 4
        yellowBarFourLeft.backgroundColor = soundBarYellow
        label4.backgroundColor = soundBarGray
        label4.font = UIFont.systemFont(ofSize: subLabelFontSize)
        label4.text = "4"
        label4.textAlignment = .center
        yellowBarFourRight.backgroundColor = soundBarYellow
        // 3
        yellowBarThreeLeft.backgroundColor = soundBarYellow
        label3.backgroundColor = soundBarGray
        label3.font = UIFont.systemFont(ofSize: subLabelFontSize)
        label3.text = "3"
        label3.textAlignment = .center
        yellowBarThreeRight.backgroundColor = soundBarYellow
        // 2
        greenBarTwoLeft.backgroundColor = soundBarGreen
        label2.backgroundColor = soundBarGray
        label2.font = UIFont.systemFont(ofSize: subLabelFontSize)
        label2.text = "2"
        label2.textAlignment = .center
        greenBarTwoRight.backgroundColor = soundBarGreen
        // 1
        greenBarOneLeft.backgroundColor = soundBarGreen
        label1.backgroundColor = soundBarGray
        label1.font = UIFont.systemFont(ofSize: subLabelFontSize)
        label1.text = "1"
        label1.textAlignment = .center
        greenBarOneRight.backgroundColor = soundBarGreen
    }
    
    
    func configureConstraints() {
        let _ = [
            // grey
            greyBG.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            , greyBG.widthAnchor.constraint(equalToConstant: 400)
            , greyBG.topAnchor.constraint(equalTo: view.topAnchor, constant: standardMargin)
            , greyBG.heightAnchor.constraint(equalToConstant: 550)
            // 5
            , label5.topAnchor.constraint(equalTo: greyBG.topAnchor, constant: 50)
            , label5.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            , label5.heightAnchor.constraint(equalToConstant: 50)
            , label5.widthAnchor.constraint(equalToConstant: 32)
            , redBarFiveLeft.widthAnchor.constraint(equalToConstant: 150)
            , redBarFiveLeft.heightAnchor.constraint(equalToConstant: 50)
            , redBarFiveLeft.trailingAnchor.constraint(equalTo: label5.leadingAnchor, constant: standardMargin)
            , redBarFiveRight.widthAnchor.constraint(equalToConstant: 150)
            , redBarFiveRight.heightAnchor.constraint(equalToConstant: 50)
            , redBarFiveRight.leadingAnchor.constraint(equalTo: label5.trailingAnchor, constant: -standardMargin)
            , redBarFiveRight.topAnchor.constraint(equalTo: greyBG.topAnchor, constant: 50)
            , redBarFiveLeft.topAnchor.constraint(equalTo: greyBG.topAnchor, constant: 50)
            // 4
            , label4.topAnchor.constraint(equalTo: label5.bottomAnchor, constant: 50)
            , label4.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            , label4.heightAnchor.constraint(equalToConstant: 50)
            , label4.widthAnchor.constraint(equalToConstant: 32)
            , yellowBarFourLeft.widthAnchor.constraint(equalToConstant: 150)
            , yellowBarFourLeft.heightAnchor.constraint(equalToConstant: 50)
            , yellowBarFourLeft.trailingAnchor.constraint(equalTo: label5.leadingAnchor, constant: standardMargin)
            , yellowBarFourRight.heightAnchor.constraint(equalToConstant: 50)
            , yellowBarFourRight.widthAnchor.constraint(equalToConstant: 150)
            , yellowBarFourRight.leadingAnchor.constraint(equalTo: label4.trailingAnchor, constant: -standardMargin)
            , yellowBarFourRight.topAnchor.constraint(equalTo: redBarFiveRight.bottomAnchor, constant: 50)
            , yellowBarFourLeft.topAnchor.constraint(equalTo: redBarFiveLeft.bottomAnchor, constant: 50)
            // 3
            , label3.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 50)
            , label3.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            , label3.heightAnchor.constraint(equalToConstant: 50)
            , label3.widthAnchor.constraint(equalToConstant: 32)
            , yellowBarThreeLeft.widthAnchor.constraint(equalToConstant: 150)
            , yellowBarThreeLeft.heightAnchor.constraint(equalToConstant: 50)
            , yellowBarThreeLeft.trailingAnchor.constraint(equalTo: label3.leadingAnchor, constant: standardMargin)
            , yellowBarThreeRight.widthAnchor.constraint(equalToConstant: 150)
            , yellowBarThreeRight.heightAnchor.constraint(equalToConstant: 50)
            , yellowBarThreeRight.leadingAnchor.constraint(equalTo: label3.trailingAnchor, constant: -standardMargin)
            , yellowBarThreeRight.topAnchor.constraint(equalTo: yellowBarFourRight.bottomAnchor, constant: 50)
            , yellowBarThreeLeft.topAnchor.constraint(equalTo: yellowBarFourLeft.bottomAnchor, constant: 50)
            // 2
            , label2.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 50)
            , label2.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            , label2.heightAnchor.constraint(equalToConstant: 50)
            , label2.widthAnchor.constraint(equalToConstant: 32)
            , greenBarTwoLeft.widthAnchor.constraint(equalToConstant: 150)
            , greenBarTwoLeft.heightAnchor.constraint(equalToConstant: 50)
            , greenBarTwoLeft.trailingAnchor.constraint(equalTo: label2.leadingAnchor, constant: standardMargin)
            , greenBarTwoRight.widthAnchor.constraint(equalToConstant: 150)
            , greenBarTwoRight.heightAnchor.constraint(equalToConstant: 50)
            , greenBarTwoRight.leadingAnchor.constraint(equalTo: label2.trailingAnchor, constant: -standardMargin)
            , greenBarTwoRight.topAnchor.constraint(equalTo: yellowBarThreeRight.bottomAnchor, constant: 50)
            , greenBarTwoLeft.topAnchor.constraint(equalTo: yellowBarThreeLeft.bottomAnchor, constant: 50)
            // 1
            , label1.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 50)
            , label1.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            , label1.heightAnchor.constraint(equalToConstant: 50)
            , label1.widthAnchor.constraint(equalToConstant: 32)
            , greenBarOneLeft.widthAnchor.constraint(equalToConstant: 150)
            , greenBarOneLeft.heightAnchor.constraint(equalToConstant: 50)
            , greenBarOneLeft.trailingAnchor.constraint(equalTo: label1.leadingAnchor, constant: standardMargin)
            , greenBarOneRight.widthAnchor.constraint(equalToConstant: 150)
            , greenBarOneRight.heightAnchor.constraint(equalToConstant: 50)
            , greenBarOneRight.leadingAnchor.constraint(equalTo: label1.trailingAnchor, constant: -standardMargin)
            , greenBarOneRight.topAnchor.constraint(equalTo: greenBarTwoRight.bottomAnchor, constant: 50)
            , greenBarOneLeft.topAnchor.constraint(equalTo: greenBarTwoLeft.bottomAnchor, constant: 50)
            // bottom labels
            , leftLabel.topAnchor.constraint(equalTo: greyBG.bottomAnchor, constant: 20)
            , centerLabel.topAnchor.constraint(equalTo: leftLabel.bottomAnchor, constant: 20)
            , rightLabel.topAnchor.constraint(equalTo: greyBG.bottomAnchor, constant: 20)
            , leftLabel.centerXAnchor.constraint(equalTo: redBarFiveLeft.centerXAnchor)
            , centerLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            , rightLabel.centerXAnchor.constraint(equalTo: redBarFiveRight.centerXAnchor)
            ].map { $0.isActive = true }
        
        let _ = [
            // grey
            greyBG
            // bottom labels
            , leftLabel
            , centerLabel
            , rightLabel
            // 5
            , redBarFiveLeft
            , label5
            , redBarFiveRight
            // 4
            , yellowBarFourLeft
            , label4
            , yellowBarFourRight
            // 3
            , yellowBarThreeLeft
            , label3
            , yellowBarThreeRight
            // 2
            , greenBarTwoLeft
            , label2
            , greenBarTwoRight
            // 1
            , greenBarOneLeft
            , label1
            , greenBarOneRight
            ].map { $0.translatesAutoresizingMaskIntoConstraints = false }
    }
    
    
    // MARK: - Define Your Views Here
    
    // grey
    let greyBG: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 600))
    // bottom labels
    let leftLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    let centerLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    let rightLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    // 5
    let redBarFiveLeft: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    let label5: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 25, height: 50))
    let redBarFiveRight: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    // 4
    let yellowBarFourLeft: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    let label4: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 25, height: 50))
    let yellowBarFourRight: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    // 3
    let yellowBarThreeLeft: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    let label3: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 25, height: 50))
    let yellowBarThreeRight: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    // 2
    let greenBarTwoLeft: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    let label2: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 25, height: 50))
    let greenBarTwoRight: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    // 1
    let greenBarOneLeft: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    let label1: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 25, height: 50))
    let greenBarOneRight: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
    
}
