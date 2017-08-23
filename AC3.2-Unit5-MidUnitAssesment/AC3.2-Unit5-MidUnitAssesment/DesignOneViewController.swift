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
        self.view.addSubview(grayContainer)
        //self.view.addSubview(leftGreen1)
        //        self.view.addSubview(rightGreen1)
        //self.view.addSubview(leftGreen2)
        //        self.view.addSubview(rightGreen2)
        // self.view.addSubview(leftYellow3)
        //        self.view.addSubview(rightYellow3)
        // self.view.addSubview(leftYellow4)
        //        self.view.addSubview(rightYellow4)
        // self.view.addSubview(leftRed5)
        //        self.view.addSubview(rightRed5)
        self.view.addSubview(leftLabel)
        self.view.addSubview(rightLabel)
        self.view.addSubview(audioLabel)
    }
    
    
    func configureConstraints() {
        let _ = [grayContainer,leftGreen1,rightGreen1,leftGreen2,rightGreen2,leftYellow3,rightYellow3,leftYellow4,rightYellow4,leftRed5,rightRed5,leftLabel,rightLabel,audioLabel,label5,label4,label3,label2,label1].map{$0.translatesAutoresizingMaskIntoConstraints = false}
        
        grayContainer.accessibilityIdentifier = "*****grayContainer"
        leftGreen1.accessibilityIdentifier = "*****leftGreen1"
        leftGreen2.accessibilityIdentifier = "*****leftGreen2"
        rightGreen2.accessibilityIdentifier = "*****rightGreen2"
        leftYellow3.accessibilityIdentifier = "*****leftYellow3"
        rightYellow3.accessibilityIdentifier = "*****rightYellow3"
        leftYellow4.accessibilityIdentifier = "*****leftYellow4"
        rightYellow4.accessibilityIdentifier = "*****rightYellow4"
        leftRed5.accessibilityIdentifier = "*****leftRed5"
        rightRed5.accessibilityIdentifier = "*****rightRed5"
        leftLabel.accessibilityIdentifier = "*****leftLabel"
        rightLabel.accessibilityIdentifier = "*****rightLabel"
        audioLabel.accessibilityIdentifier = "*****audioLabel"
        
        let _ = [
            grayContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            grayContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: standardMargin),
            grayContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -standardMargin),
            grayContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -140),
            ].map{$0.isActive = true}
        grayContainer.backgroundColor = soundBarGray
        
        // left sound bars
        grayContainer.addSubview(leftRed5)
        let _ = [
            leftRed5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 60),
            leftRed5.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 40),
            leftRed5.widthAnchor.constraint(equalToConstant: 140),
            leftRed5.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        leftRed5.backgroundColor = soundBarRed
        
        grayContainer.addSubview(leftYellow4)
        let _ = [
            leftYellow4.topAnchor.constraint(equalTo: leftRed5.bottomAnchor, constant: 50),
            leftYellow4.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 40),
            leftYellow4.widthAnchor.constraint(equalToConstant: 140),
            leftYellow4.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        leftYellow4.backgroundColor = soundBarYellow
        
        grayContainer.addSubview(leftYellow3)
        let _ = [
            leftYellow3.topAnchor.constraint(equalTo: leftYellow4.bottomAnchor, constant: 50),
            leftYellow3.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 40),
            leftYellow3.widthAnchor.constraint(equalToConstant: 140),
            leftYellow3.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        leftYellow3.backgroundColor = soundBarYellow
        
        grayContainer.addSubview(leftGreen2)
        let _ = [
            leftGreen2.topAnchor.constraint(equalTo: leftYellow3.bottomAnchor, constant: 50),
            leftGreen2.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 40),
            leftGreen2.widthAnchor.constraint(equalToConstant: 140),
            leftGreen2.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        leftGreen2.backgroundColor = soundBarGreen
        
        grayContainer.addSubview(leftGreen1)
        let _ = [
            leftGreen1.topAnchor.constraint(equalTo: leftGreen2.bottomAnchor, constant: 50),
            leftGreen1.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 40),
            leftGreen1.widthAnchor.constraint(equalToConstant: 140),
            leftGreen1.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        leftGreen1.backgroundColor = soundBarGreen
        
        // right sound bars
        grayContainer.addSubview(rightRed5)
        let _ = [
            rightRed5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 60),
            rightRed5.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -40),
            rightRed5.widthAnchor.constraint(equalToConstant: 140),
            rightRed5.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        rightRed5.backgroundColor = soundBarRed
        
        grayContainer.addSubview(rightYellow4)
        let _ = [
            rightYellow4.topAnchor.constraint(equalTo: leftRed5.bottomAnchor, constant: 50),
            rightYellow4.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -40),
            rightYellow4.widthAnchor.constraint(equalToConstant: 140),
            rightYellow4.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        rightYellow4.backgroundColor = soundBarYellow
        
        grayContainer.addSubview(rightYellow3)
        let _ = [
            rightYellow3.topAnchor.constraint(equalTo: leftYellow4.bottomAnchor, constant: 50),
            rightYellow3.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -40),
            rightYellow3.widthAnchor.constraint(equalToConstant: 140),
            rightYellow3.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        rightYellow3.backgroundColor = soundBarYellow
        
        grayContainer.addSubview(rightGreen2)
        let _ = [
            rightGreen2.topAnchor.constraint(equalTo: leftYellow3.bottomAnchor, constant: 50),
            rightGreen2.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -40),
            rightGreen2.widthAnchor.constraint(equalToConstant: 140),
            rightGreen2.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        rightGreen2.backgroundColor = soundBarGreen
        
        grayContainer.addSubview(rightGreen1)
        let _ = [
            rightGreen1.topAnchor.constraint(equalTo: leftGreen2.bottomAnchor, constant: 50),
            rightGreen1.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -40),
            rightGreen1.widthAnchor.constraint(equalToConstant: 140),
            rightGreen1.heightAnchor.constraint(equalToConstant: 40),
            ].map{$0.isActive = true}
        rightGreen1.backgroundColor = soundBarGreen
        
        // bottom labels
        let _ = [
            leftLabel.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 15),
            leftLabel.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 80),
            ].map{$0.isActive = true}
        leftLabel.text = "Left"
        leftLabel.textColor = .white
        leftLabel.font = UIFont.systemFont(ofSize: mainLabelFontSize)
        
        
        let _ = [
            rightLabel.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 15),
            rightLabel.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -80),
            ].map{$0.isActive = true}
        rightLabel.text = "Right"
        rightLabel.textColor = .white
        rightLabel.font = UIFont.systemFont(ofSize: mainLabelFontSize)
        
        let _ = [
            audioLabel.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 70),
            audioLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 120),
//            audioLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            ].map{$0.isActive = true}
        audioLabel.text = "Audio Channels"
        audioLabel.textColor = .white
        audioLabel.font = UIFont.systemFont(ofSize: mainLabelFontSize)
        
        // middle labels
        grayContainer.addSubview(label5)
        grayContainer.addSubview(label4)
        grayContainer.addSubview(label3)
        grayContainer.addSubview(label2)
        grayContainer.addSubview(label1)
        
        let _ = [
            label5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 70),
            label5.trailingAnchor.constraint(equalTo: rightRed5.leadingAnchor, constant: -16),
            ].map{$0.isActive = true}
        label5.text = "5"
        label5.font = UIFont.systemFont(ofSize: subLabelFontSize)
        
        let _ = [
            label4.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 160),
            label4.trailingAnchor.constraint(equalTo: rightYellow4.leadingAnchor, constant: -16),
            ].map{$0.isActive = true}
        label4.text = "4"
        label4.font = UIFont.systemFont(ofSize: subLabelFontSize)
        
        let _ = [
            label3.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 250),
            label3.trailingAnchor.constraint(equalTo: rightYellow3.leadingAnchor, constant: -16),
            ].map{$0.isActive = true}
        label3.text = "3"
        label3.font = UIFont.systemFont(ofSize: subLabelFontSize)
        
        let _ = [
            label2.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 340),
            label2.trailingAnchor.constraint(equalTo: rightGreen2.leadingAnchor, constant: -16),
            ].map{$0.isActive = true}
        label2.text = "2"
        label2.font = UIFont.systemFont(ofSize: subLabelFontSize)
        
        let _ = [
        label1.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 430),
            label1.trailingAnchor.constraint(equalTo: rightGreen1.leadingAnchor, constant: -16),
            ].map{$0.isActive = true}
        label1.text = "1"
        label1.font = UIFont.systemFont(ofSize: subLabelFontSize)
    }
    
    // MARK: - Define Your Views Here
    
    let grayContainer: UIView = UIView()
    let leftGreen1: UIView = UIView()
    let rightGreen1: UIView = UIView()
    let leftGreen2: UIView = UIView()
    let rightGreen2: UIView = UIView()
    let leftYellow3: UIView = UIView()
    let rightYellow3: UIView = UIView()
    let leftYellow4: UIView = UIView()
    let rightYellow4: UIView = UIView()
    let leftRed5: UIView = UIView()
    let rightRed5: UIView = UIView()
    var leftLabel: UILabel = UILabel()
    var rightLabel: UILabel = UILabel()
    var audioLabel: UILabel = UILabel()
    var label5: UILabel = UILabel()
    var label4: UILabel = UILabel()
    var label3: UILabel = UILabel()
    var label2: UILabel = UILabel()
    var label1: UILabel = UILabel()
    
}
