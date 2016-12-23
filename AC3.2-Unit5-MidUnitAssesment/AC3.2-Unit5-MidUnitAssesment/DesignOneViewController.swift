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
    
    let grayView = UIView()
    let channelsLabel = UILabel()
    let leftLabel = UILabel()
    let rightLabel = UILabel()
    
    let fiveLabel = UILabel()
    let fiveLeftView = UIView()
    let fiveRightView = UIView()
    let fourLabel = UILabel()
    let fourLeftView = UIView()
    let fourRightView = UIView()
    let threeLabel = UILabel()
    let threeLeftView = UIView()
    let threeRightView = UIView()
    let twoLabel = UILabel()
    let twoLeftView = UIView()
    let twoRightView = UIView()
    let oneLabel = UILabel()
    let oneLeftView = UIView()
    let oneRightView = UIView()
    
    
    func setupViewHierarchy() {
        // Add Views Here
        
        channelsLabel.translatesAutoresizingMaskIntoConstraints = false
        channelsLabel.text = "Audio Chanels"
        channelsLabel.textAlignment = .center
        channelsLabel.textColor = .white
        channelsLabel.font = UIFont(name: channelsLabel.font.fontName, size: mainLabelFontSize)
        self.view.addSubview(channelsLabel)
        
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        leftLabel.text = "Left"
        leftLabel.textAlignment = .center
        leftLabel.textColor = soundBarGray
        leftLabel.font = UIFont(name: channelsLabel.font.fontName, size: subLabelFontSize)
        self.view.addSubview(leftLabel)
        
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightLabel.text = "Right"
        rightLabel.textAlignment = .center
        rightLabel.textColor = soundBarGray
        rightLabel.font = UIFont(name: channelsLabel.font.fontName, size: subLabelFontSize)
        self.view.addSubview(rightLabel)

        grayView.translatesAutoresizingMaskIntoConstraints = false
        grayView.backgroundColor = soundBarGray
        self.view.addSubview(grayView)
        
        fiveLabel.translatesAutoresizingMaskIntoConstraints = false
        fiveLeftView.translatesAutoresizingMaskIntoConstraints = false
        fiveRightView.translatesAutoresizingMaskIntoConstraints = false
        fourLabel.translatesAutoresizingMaskIntoConstraints = false
        fourLeftView.translatesAutoresizingMaskIntoConstraints = false
        fourRightView.translatesAutoresizingMaskIntoConstraints = false
        threeLabel.translatesAutoresizingMaskIntoConstraints = false
        threeLeftView.translatesAutoresizingMaskIntoConstraints = false
        threeRightView.translatesAutoresizingMaskIntoConstraints = false
        twoLabel.translatesAutoresizingMaskIntoConstraints = false
        twoLeftView.translatesAutoresizingMaskIntoConstraints = false
        twoRightView.translatesAutoresizingMaskIntoConstraints = false
        oneLabel.translatesAutoresizingMaskIntoConstraints = false
        oneLeftView.translatesAutoresizingMaskIntoConstraints = false
        oneRightView.translatesAutoresizingMaskIntoConstraints = false
        
        fiveLabel.text = "5"
        fourLabel.text = "4"
        threeLabel.text = "3"
        twoLabel.text = "2"
        oneLabel.text = "1"
        
        fiveLabel.font = UIFont(name: fiveLabel.font.fontName, size: mainLabelFontSize)
        fourLabel.font = UIFont(name: fiveLabel.font.fontName, size: mainLabelFontSize)
        threeLabel.font = UIFont(name: fiveLabel.font.fontName, size: mainLabelFontSize)
        twoLabel.font = UIFont(name: fiveLabel.font.fontName, size: mainLabelFontSize)
        oneLabel.font = UIFont(name: fiveLabel.font.fontName, size: mainLabelFontSize)
        
        fiveLeftView.backgroundColor = soundBarRed
        fiveRightView.backgroundColor = soundBarRed
        fourLeftView.backgroundColor = soundBarYellow
        fourRightView.backgroundColor = soundBarYellow
        threeLeftView.backgroundColor = soundBarYellow
        threeRightView.backgroundColor = soundBarYellow
        twoLeftView.backgroundColor = soundBarGreen
        twoRightView.backgroundColor = soundBarGreen
        oneLeftView.backgroundColor = soundBarGreen
        oneRightView.backgroundColor = soundBarGreen
        
        grayView.addSubview(oneLabel)
        grayView.addSubview(oneLeftView)
        grayView.addSubview(oneRightView)
        grayView.addSubview(twoLabel)
        grayView.addSubview(twoLeftView)
        grayView.addSubview(twoRightView)
        grayView.addSubview(threeLabel)
        grayView.addSubview(threeLeftView)
        grayView.addSubview(threeRightView)
        grayView.addSubview(fourLabel)
        grayView.addSubview(fourLeftView)
        grayView.addSubview(fourRightView)
        grayView.addSubview(fiveLabel)
        grayView.addSubview(fiveLeftView)
        grayView.addSubview(fiveRightView)
        
    }
    //greenView.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    func configureConstraints() {
        // Add Constraints Here
        _ = [
            channelsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            channelsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            channelsLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            channelsLabel.heightAnchor.constraint(equalToConstant: barMargin),
            leftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            leftLabel.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            leftLabel.bottomAnchor.constraint(equalTo: channelsLabel.topAnchor),
            leftLabel.heightAnchor.constraint(equalToConstant: barMargin),
            rightLabel.leadingAnchor.constraint(equalTo: view.centerXAnchor),
            rightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            rightLabel.bottomAnchor.constraint(equalTo: channelsLabel.topAnchor),
            rightLabel.heightAnchor.constraint(equalToConstant: barMargin),
            grayView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: standardMargin),
            grayView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: standardMargin),
            grayView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -standardMargin),
            grayView.bottomAnchor.constraint(equalTo: rightLabel.topAnchor, constant: -standardMargin),
            
            fiveLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor),
            fiveLabel.topAnchor.constraint(equalTo: grayView.topAnchor, constant: barMargin),
            fiveLeftView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: barMargin),
            fiveLeftView.trailingAnchor.constraint(equalTo: fiveLabel.leadingAnchor, constant: -standardMargin),
            fiveLeftView.topAnchor.constraint(equalTo: fiveLabel.topAnchor),
            fiveLeftView.bottomAnchor.constraint(equalTo: fiveLabel.bottomAnchor),
            fiveRightView.leadingAnchor.constraint(equalTo: fiveLabel.trailingAnchor, constant: standardMargin),
            fiveRightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -barMargin),
            fiveRightView.topAnchor.constraint(equalTo: fiveLabel.topAnchor),
            fiveRightView.bottomAnchor.constraint(equalTo: fiveLabel.bottomAnchor),
            
            fourLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor),
            fourLabel.topAnchor.constraint(equalTo: fiveLabel.bottomAnchor, constant: barMargin),
            fourLeftView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: barMargin),
            fourLeftView.trailingAnchor.constraint(equalTo: fourLabel.leadingAnchor, constant: -standardMargin),
            fourLeftView.topAnchor.constraint(equalTo: fourLabel.topAnchor),
            fourLeftView.bottomAnchor.constraint(equalTo: fourLabel.bottomAnchor),
            fourRightView.leadingAnchor.constraint(equalTo: fourLabel.trailingAnchor, constant: standardMargin),
            fourRightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -barMargin),
            fourRightView.topAnchor.constraint(equalTo: fourLabel.topAnchor),
            fourRightView.bottomAnchor.constraint(equalTo: fourLabel.bottomAnchor),
            
            threeLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor),
            threeLabel.topAnchor.constraint(equalTo: fourLabel.bottomAnchor, constant: barMargin),
            threeLeftView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: barMargin),
            threeLeftView.trailingAnchor.constraint(equalTo: threeLabel.leadingAnchor, constant: -standardMargin),
            threeLeftView.topAnchor.constraint(equalTo: threeLabel.topAnchor),
            threeLeftView.bottomAnchor.constraint(equalTo: threeLabel.bottomAnchor),
            threeRightView.leadingAnchor.constraint(equalTo: threeLabel.trailingAnchor, constant: standardMargin),
            threeRightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -barMargin),
            threeRightView.topAnchor.constraint(equalTo: threeLabel.topAnchor),
            threeRightView.bottomAnchor.constraint(equalTo: threeLabel.bottomAnchor),
            
            twoLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor),
            twoLabel.topAnchor.constraint(equalTo: threeLabel.bottomAnchor, constant: barMargin),
            twoLeftView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: barMargin),
            twoLeftView.trailingAnchor.constraint(equalTo: twoLabel.leadingAnchor, constant: -standardMargin),
            twoLeftView.topAnchor.constraint(equalTo: twoLabel.topAnchor),
            twoLeftView.bottomAnchor.constraint(equalTo: twoLabel.bottomAnchor),
            twoRightView.leadingAnchor.constraint(equalTo: twoLabel.trailingAnchor, constant: standardMargin),
            twoRightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -barMargin),
            twoRightView.topAnchor.constraint(equalTo: twoLabel.topAnchor),
            twoRightView.bottomAnchor.constraint(equalTo: twoLabel.bottomAnchor),

            oneLabel.centerXAnchor.constraint(equalTo: grayView.centerXAnchor),
            oneLabel.topAnchor.constraint(equalTo: twoLabel.bottomAnchor, constant: barMargin),
//            oneLabel.bottomAnchor.constraint(equalTo: grayView.bottomAnchor, constant: -barMargin),
            oneLeftView.leadingAnchor.constraint(equalTo: grayView.leadingAnchor, constant: barMargin),
            oneLeftView.trailingAnchor.constraint(equalTo: oneLabel.leadingAnchor, constant: -standardMargin),
            oneLeftView.topAnchor.constraint(equalTo: oneLabel.topAnchor),
            oneLeftView.bottomAnchor.constraint(equalTo: oneLabel.bottomAnchor),
            oneRightView.leadingAnchor.constraint(equalTo: oneLabel.trailingAnchor, constant: standardMargin),
            oneRightView.trailingAnchor.constraint(equalTo: grayView.trailingAnchor, constant: -barMargin),
            oneRightView.topAnchor.constraint(equalTo: oneLabel.topAnchor),
            oneRightView.bottomAnchor.constraint(equalTo: oneLabel.bottomAnchor)

            ].map { $0.isActive = true }
    }
    
    
    // MARK: - Define Your Views Here
    
    // ex:
    // let grayContainer: UIView = ... your code here ...
    // let leftGreen1: UIView = ... your code here ...
    // let leftGreen2: UIView = ... your code here ...
    //
    
    
}
