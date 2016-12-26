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
        self.setUpLabels()
        self.title = titleForCell
        self.edgesForExtendedLayout = []
    }
    
    func setupViewHierarchy() {
        // Add Views Here
        self.view.addSubview(grayContainer)
        //Left
        self.grayContainer.addSubview(leftRed5)
        self.grayContainer.addSubview(leftYellow4)
        self.grayContainer.addSubview(leftYellow3)
        self.grayContainer.addSubview(leftGreen2)
        self.grayContainer.addSubview(leftGreen1)
        //Right
        self.grayContainer.addSubview(rightRed5)
        self.grayContainer.addSubview(rightYellow4)
        self.grayContainer.addSubview(rightYellow3)
        self.grayContainer.addSubview(rightGreen2)
        self.grayContainer.addSubview(rightGreen1)
        //Center labels
        self.grayContainer.addSubview(num5view)
        self.grayContainer.addSubview(num4view)
        self.grayContainer.addSubview(num3view)
        self.grayContainer.addSubview(num2view)
        self.grayContainer.addSubview(num1view)
        //Bottom labels
        self.view.addSubview(leftView)
        self.view.addSubview(rightView)
        self.view.addSubview(audioView)
    }
    
    func setUpLabels() {
        self.num5view.addSubview(num5)
        self.num4view.addSubview(num4)
        self.num3view.addSubview(num3)
        self.num2view.addSubview(num2)
        self.num1view.addSubview(num1)
        self.leftView.addSubview(left)
        self.rightView.addSubview(right)
        self.audioView.addSubview(audioChannels)
        
    }
    
    func configureConstraints() {
        // Add Constraints Here
        grayContainer.translatesAutoresizingMaskIntoConstraints = false
        leftRed5.translatesAutoresizingMaskIntoConstraints = false
        leftYellow4.translatesAutoresizingMaskIntoConstraints = false
        leftYellow3.translatesAutoresizingMaskIntoConstraints = false
        leftGreen2.translatesAutoresizingMaskIntoConstraints = false
        leftGreen1.translatesAutoresizingMaskIntoConstraints = false
        rightRed5.translatesAutoresizingMaskIntoConstraints = false
        rightYellow4.translatesAutoresizingMaskIntoConstraints = false
        rightYellow3.translatesAutoresizingMaskIntoConstraints = false
        rightGreen2.translatesAutoresizingMaskIntoConstraints = false
        rightGreen1.translatesAutoresizingMaskIntoConstraints = false
        //labels
        num5view.translatesAutoresizingMaskIntoConstraints = false
        num4view.translatesAutoresizingMaskIntoConstraints = false
        num3view.translatesAutoresizingMaskIntoConstraints = false
        num2view.translatesAutoresizingMaskIntoConstraints = false
        num1view.translatesAutoresizingMaskIntoConstraints = false
        leftView.translatesAutoresizingMaskIntoConstraints = false
        rightView.translatesAutoresizingMaskIntoConstraints = false
        audioView.translatesAutoresizingMaskIntoConstraints = false
        
        let soundBoardConstraints = [
            grayContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            grayContainer.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            grayContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10),
            grayContainer.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10.0),
            grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10.0)
        ]
        
        
        //REFACTOR THIS
        
        //**Left
        let redSoundBarLeft5 = [
            leftRed5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 48),
            leftRed5.leadingAnchor.constraint(equalTo: grayContainer.leadingAnchor, constant: 24.0),
            leftRed5.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            leftRed5.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        let yellowSoundBarLeft4 = [
            leftYellow4.topAnchor.constraint(equalTo: leftRed5.bottomAnchor, constant: 48),
            leftYellow4.centerXAnchor.constraint(equalTo: leftRed5.centerXAnchor),
            leftYellow4.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            leftYellow4.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        //center
        let yellowSoundBarLeft3 = [
            leftYellow3.topAnchor.constraint(equalTo: leftYellow4.bottomAnchor, constant: 48),
            leftYellow3.centerXAnchor.constraint(equalTo: leftYellow4.centerXAnchor),
            leftYellow3.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            leftYellow3.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        let greenSoundBarLeft2 = [
            leftGreen2.topAnchor.constraint(equalTo: leftYellow3.bottomAnchor, constant: 48),
            leftGreen2.centerXAnchor.constraint(equalTo: leftYellow3.centerXAnchor),
            leftGreen2.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            leftGreen2.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        let greenSoundBarLeft1 = [
            leftGreen1.topAnchor.constraint(equalTo: leftGreen2.bottomAnchor, constant: 48),
            leftGreen1.centerXAnchor.constraint(equalTo: leftGreen2.centerXAnchor),
            leftGreen1.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            leftGreen1.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        //**Right
        
        let redSoundBarRight5 = [
            rightRed5.topAnchor.constraint(equalTo: grayContainer.topAnchor, constant: 48),
            rightRed5.trailingAnchor.constraint(equalTo: grayContainer.trailingAnchor, constant: -24.0),
            rightRed5.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            rightRed5.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        let yellowSoundBarRight4 = [
            rightYellow4.topAnchor.constraint(equalTo: rightRed5.bottomAnchor, constant: 48),
            rightYellow4.centerXAnchor.constraint(equalTo: rightRed5.centerXAnchor),
            rightYellow4.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            rightYellow4.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        //center
        let yellowSoundBarRight3 = [
            rightYellow3.topAnchor.constraint(equalTo: rightYellow4.bottomAnchor, constant: 48),
            rightYellow3.centerXAnchor.constraint(equalTo: rightYellow4.centerXAnchor),
            rightYellow3.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            rightYellow3.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        let greenSoundBarRight2 = [
            rightGreen2.topAnchor.constraint(equalTo: rightYellow3.bottomAnchor, constant: 48),
            rightGreen2.centerXAnchor.constraint(equalTo: rightYellow3.centerXAnchor),
            rightGreen2.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            rightGreen2.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        let greenSoundBarRight1 = [
            rightGreen1.topAnchor.constraint(equalTo: rightGreen2.bottomAnchor, constant: 48),
            rightGreen1.centerXAnchor.constraint(equalTo: rightGreen2.centerXAnchor),
            rightGreen1.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            rightGreen1.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.40)
        ]
        
        //Labels
        
        let num5 = [
            num5view.centerYAnchor.constraint(equalTo: leftRed5.centerYAnchor),
            num5view.topAnchor.constraint(equalTo: leftRed5.topAnchor, constant: 8.0),
            num5view.leadingAnchor.constraint(equalTo: leftRed5.trailingAnchor),
            num5view.trailingAnchor.constraint(equalTo: rightRed5.leadingAnchor),
            num5view.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            num5view.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.05)
        ]
        let num4 = [
            num4view.centerXAnchor.constraint(equalTo: num5view.centerXAnchor),
            num4view.topAnchor.constraint(equalTo: leftYellow4.topAnchor, constant: 8.0),
            num4view.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            num4view.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.05)
        ]
        let num3 = [
            num3view.centerXAnchor.constraint(equalTo: num4view.centerXAnchor),
            num3view.topAnchor.constraint(equalTo: leftYellow3.topAnchor, constant: 8.0),
            num3view.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            num3view.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.05)
        ]
        let num2 = [
            num2view.centerXAnchor.constraint(equalTo: num3view.centerXAnchor),
            num2view.topAnchor.constraint(equalTo: leftGreen2.topAnchor, constant: 8.0),
            num2view.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            num2view.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.05)
        ]
        let num1 = [
            num1view.centerXAnchor.constraint(equalTo: num2view.centerXAnchor),
            num1view.topAnchor.constraint(equalTo: leftGreen1.topAnchor, constant: 8.0),
            num1view.heightAnchor.constraint(equalTo: grayContainer.heightAnchor, multiplier: 0.075),
            num1view.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.05)
        ]
        let left = [
            leftView.leadingAnchor.constraint(equalTo: leftGreen1.leadingAnchor, constant: 48.0),
            leftView.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 20.0)
        ]
        let right = [
            rightView.leadingAnchor.constraint(equalTo: rightGreen1.leadingAnchor, constant: 48.0),
            rightView.topAnchor.constraint(equalTo: grayContainer.bottomAnchor, constant: 20.0)
        ]
        let audio = [
            audioView.topAnchor.constraint(equalTo: leftView.bottomAnchor, constant: 48.0),
            audioView.leadingAnchor.constraint(equalTo: leftView.leadingAnchor, constant: 48.0),
            audioView.widthAnchor.constraint(equalTo: grayContainer.widthAnchor, multiplier: 0.25)
        ]
        
        
        let _ = [
            soundBoardConstraints,
            redSoundBarLeft5,
            yellowSoundBarLeft4,
            yellowSoundBarLeft3,
            greenSoundBarLeft2,
            greenSoundBarLeft1,
            redSoundBarRight5,
            yellowSoundBarRight4,
            yellowSoundBarRight3,
            greenSoundBarRight2,
            greenSoundBarRight1,
            num5,
            num4,
            num3,
            num2,
            num1,
            left,
            right,
            audio
            ].map{ $0.map{ $0.isActive = true } }
    }
    
    
    // MARK: - Define Your Views Here
    
    let grayContainer: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return view
    }()
    // Left:
    
    let leftRed5: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        return view
    }()
    
    let leftYellow4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        return view
    }()
    
    let leftYellow3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        return view
    }()
    
    let leftGreen2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        return view
    }()
    
    let leftGreen1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        return view
    }()
    
    // Right:
    
    let rightRed5: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        return view
    }()
    
    let rightYellow4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        return view
    }()
    
    let rightYellow3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        return view
    }()
    
    let rightGreen2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        return view
    }()
    
    let rightGreen1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        return view
    }()
    
    // Label Views:
    let num5view: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return view
    }()
    let num4view: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return view
    }()
    let num3view: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return view
    }()
    let num2view: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return view
    }()
    let num1view: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return view
    }()
    
    let leftView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    let rightView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    let audioView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black
        return view
    }()
    
    //Labels Gray Container:
    let num5: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        return label
    }()
    let num4: UILabel = {
        let label = UILabel()
        label.text = "4"
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        return label
    }()
    let num3: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        return label
    }()
    let num2: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        return label
    }()
    let num1: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = UIColor.black
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        return label
    }()
    
    //Bottom Labels:
    let left: UILabel = {
        let label = UILabel()
        label.text = "Left"
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14.0)
        return label
    }()
    let right: UILabel = {
        let label = UILabel()
        label.text = "Right"
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14.0)
        return label
    }()
    let audioChannels: UILabel = {
        let label = UILabel()
        label.text = "Audio Channels"
        label.sizeToFit()
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.textColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        return label
    }()
    
    
}
