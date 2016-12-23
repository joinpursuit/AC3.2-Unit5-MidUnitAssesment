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
    
    let grayBackground = UIView()
    
    let greenViewOneLeft = UIView()
    let greenViewOneRight = UIView()
    let greenViewTwoLeft = UIView()
    let greenViewTwoRight = UIView()
    let yellowViewThreeLeft = UIView()
    let yellowViewThreeRight = UIView()
    let yellowViewFourLeft = UIView()
    let yellowViewFourRight = UIView()
    let redViewFiveLeft = UIView()
    let redViewFiveRight = UIView()
    let redViewSixLeft = UIView()
    let redViewSixRight = UIView()
    
    let oneLabel = UILabel()
    let twoLabel = UILabel()
    let threeLabel = UILabel()
    let fourLabel = UILabel()
    let fiveLabel = UILabel()
    let sixLabel = UILabel()
    
    let mainLabel = UILabel()
    
    let leftLabel = UILabel()
    let rightLabel = UILabel()
    
    
    
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
        view.addSubview(grayBackground)
        
        view.addSubview(greenViewOneLeft)
        view.addSubview(greenViewOneRight)
        
        view.addSubview(greenViewTwoLeft)
        view.addSubview(greenViewTwoRight)
        
        view.addSubview(yellowViewThreeLeft)
        view.addSubview(yellowViewThreeRight)
        
        view.addSubview(yellowViewFourLeft)
        view.addSubview(yellowViewFourRight)
        
        view.addSubview(redViewFiveLeft)
        view.addSubview(redViewFiveRight)
        
        view.addSubview(redViewSixLeft)
        view.addSubview(redViewSixRight)
        
        view.addSubview(oneLabel)
        view.addSubview(twoLabel)
        view.addSubview(threeLabel)
        view.addSubview(fourLabel)
        view.addSubview(fiveLabel)
        view.addSubview(sixLabel)
        
        view.addSubview(mainLabel)
        
        view.addSubview(leftLabel)
        view.addSubview(rightLabel)
        
    }
    
    
    func configureConstraints() {
        // Add Constraints Here
        //    self.edgesForExtendedLayout = []
        
        let _ = [
            grayBackground,
            greenViewOneLeft,
            greenViewOneRight,
            greenViewTwoLeft,
            greenViewTwoRight,
            yellowViewThreeLeft,
            yellowViewThreeRight,
            yellowViewFourLeft,
            yellowViewFourRight,
            redViewFiveLeft,
            redViewFiveRight,
            redViewSixLeft,
            redViewSixRight,
            oneLabel,
            twoLabel,
            threeLabel,
            fourLabel,
            fiveLabel,
            sixLabel,
            mainLabel,
            leftLabel,
            rightLabel,
            ].map{ $0.translatesAutoresizingMaskIntoConstraints = false }
        
        
        let _ = [
            mainLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ].map{ $0.isActive = true }
        mainLabel.text = "Main Audio Channels"
        mainLabel.textColor = .white
        mainLabel.font = UIFont.systemFont(ofSize: mainLabelFontSize)
        mainLabel.textAlignment = .center
        
        let _ = [
            leftLabel.bottomAnchor.constraint(equalTo: mainLabel.topAnchor, constant: -10),
            leftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            leftLabel.trailingAnchor.constraint(equalTo: view.centerXAnchor)
            ].map{ $0.isActive = true }
        leftLabel.text = "Left"
        leftLabel.textColor = .white
        leftLabel.font = UIFont.systemFont(ofSize: subLabelFontSize)
        leftLabel.textAlignment = .center
        
        let _ = [
            rightLabel.bottomAnchor.constraint(equalTo: mainLabel.topAnchor, constant: -10),
            rightLabel.leadingAnchor.constraint(equalTo: view.centerXAnchor),
            rightLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ].map{ $0.isActive = true }
        rightLabel.text = "Right"
        rightLabel.textColor = .white
        rightLabel.font = UIFont.systemFont(ofSize: subLabelFontSize)
        rightLabel.textAlignment = .center
        
        let _ = [
            grayBackground.bottomAnchor.constraint(equalTo: leftLabel.topAnchor, constant: -10),
            grayBackground.topAnchor.constraint(equalTo: view.topAnchor, constant: 68),
            grayBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 4),
            grayBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -4)
            ].map{ $0.isActive = true }
        grayBackground.backgroundColor = soundBarGray
        
        
        let _ = [
            oneLabel,
            twoLabel,
            threeLabel,
            fourLabel,
            fiveLabel,
            sixLabel,
            ].map{ $0.centerXAnchor.constraint(equalTo: grayBackground.centerXAnchor).isActive = true }
        
        let _ = [
            sixLabel.bottomAnchor.constraint(equalTo: fiveLabel.topAnchor, constant: -barMargin),
            fiveLabel.bottomAnchor.constraint(equalTo: fourLabel.topAnchor, constant: -barMargin),
            fourLabel.bottomAnchor.constraint(equalTo: threeLabel.topAnchor, constant: -barMargin),
            threeLabel.centerYAnchor.constraint(equalTo: grayBackground.centerYAnchor, constant: barMargin - 10),
            twoLabel.topAnchor.constraint(equalTo: threeLabel.bottomAnchor, constant: barMargin),
            oneLabel.topAnchor.constraint(equalTo: twoLabel.bottomAnchor, constant: barMargin)
            ].map{  $0.isActive = true }
        let _ = [
            oneLabel,
            twoLabel,
            threeLabel,
            fourLabel,
            fiveLabel,
            sixLabel,
            ].map{ $0.font = UIFont.systemFont(ofSize: mainLabelFontSize)}
        
        oneLabel.text = "1"
        twoLabel.text = "2"
        threeLabel.text = "3"
        fourLabel.text = "4"
        fiveLabel.text = "5"
        sixLabel.text = "6"
        

        greenViewOneLeft.backgroundColor = soundBarGreen
        greenViewOneRight.backgroundColor = soundBarGreen
        greenViewTwoLeft.backgroundColor = soundBarGreen
        greenViewTwoRight.backgroundColor = soundBarGreen
        yellowViewThreeLeft.backgroundColor = soundBarYellow
        yellowViewThreeRight.backgroundColor = soundBarYellow
        yellowViewFourLeft.backgroundColor = soundBarYellow
        yellowViewFourRight.backgroundColor = soundBarYellow
        redViewFiveLeft.backgroundColor = soundBarRed
        redViewFiveRight.backgroundColor = soundBarRed
        redViewSixLeft.backgroundColor = soundBarRed
        redViewSixRight.backgroundColor = soundBarRed

//left views
        let _ = [
        greenViewOneLeft,
        greenViewTwoLeft,
        yellowViewThreeLeft,
        yellowViewFourLeft,
        redViewFiveLeft,
        redViewSixLeft
            ].map{ $0.heightAnchor.constraint(equalToConstant: barMargin).isActive = true }
      
        let _ = [
            greenViewOneLeft,
            greenViewTwoLeft,
            yellowViewThreeLeft,
            yellowViewFourLeft,
            redViewFiveLeft,
            redViewSixLeft
            ].map{ $0.leadingAnchor.constraint(equalTo: grayBackground.leadingAnchor, constant:barMargin).isActive = true }
        
        let _ = [
            greenViewOneLeft,
            greenViewTwoLeft,
            yellowViewThreeLeft,
            yellowViewFourLeft,
            redViewFiveLeft,
            redViewSixLeft
            ].map{ $0.trailingAnchor.constraint(equalTo: oneLabel.leadingAnchor, constant: -standardMargin).isActive = true}
        
        let _ = [
        greenViewOneLeft.centerYAnchor.constraint(equalTo:  oneLabel.centerYAnchor),
        greenViewTwoLeft.centerYAnchor.constraint(equalTo:  twoLabel.centerYAnchor),
        yellowViewThreeLeft.centerYAnchor.constraint(equalTo:  threeLabel.centerYAnchor),
        yellowViewFourLeft.centerYAnchor.constraint(equalTo:  fourLabel.centerYAnchor),
        redViewFiveLeft.centerYAnchor.constraint(equalTo:  fiveLabel.centerYAnchor),
        redViewSixLeft.centerYAnchor.constraint(equalTo:  sixLabel.centerYAnchor)
            ].map{ $0.isActive = true }
        
        //right Views
        
        let _ = [
            greenViewOneRight,
            greenViewTwoRight,
            yellowViewThreeRight,
            yellowViewFourRight,
            redViewFiveRight,
            redViewSixRight
            ].map{ $0.heightAnchor.constraint(equalToConstant: barMargin).isActive = true }
        
        let _ = [
            greenViewOneRight,
            greenViewTwoRight,
            yellowViewThreeRight,
            yellowViewFourRight,
            redViewFiveRight,
            redViewSixRight
            ].map{ $0.leadingAnchor.constraint(equalTo: oneLabel.trailingAnchor, constant:standardMargin).isActive = true }
        
        let _ = [
            greenViewOneRight,
            greenViewTwoRight,
            yellowViewThreeRight,
            yellowViewFourRight,
            redViewFiveRight,
            redViewSixRight
            ].map{ $0.trailingAnchor.constraint(equalTo: grayBackground.trailingAnchor, constant: -barMargin).isActive = true}
        
        let _ = [
            greenViewOneRight.centerYAnchor.constraint(equalTo:  oneLabel.centerYAnchor),
            greenViewTwoRight.centerYAnchor.constraint(equalTo:  twoLabel.centerYAnchor),
            yellowViewThreeRight.centerYAnchor.constraint(equalTo:  threeLabel.centerYAnchor),
            yellowViewFourRight.centerYAnchor.constraint(equalTo:  fourLabel.centerYAnchor),
            redViewFiveRight.centerYAnchor.constraint(equalTo:  fiveLabel.centerYAnchor),
            redViewSixRight.centerYAnchor.constraint(equalTo:  sixLabel.centerYAnchor)
            ].map{ $0.isActive = true }


    }


    // MARK: - Define Your Views Here
    
    // ex: 
    // let grayContainer: UIView = ... your code here ...
    // let leftGreen1: UIView = ... your code here ...
    // let leftGreen2: UIView = ... your code here ...
    //
    
    
}
