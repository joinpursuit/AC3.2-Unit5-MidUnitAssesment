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
    static let soundBarRed: UIColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
    static let soundBarYellow: UIColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
    static let soundBarGreen: UIColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
    static let soundBarGray: UIColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
    
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
        self.edgesForExtendedLayout = []
    }
    
    
    func setupViewHierarchy() {
        // Add Views Here
        self.view.addSubview(backGroundView)
        self.view.addSubview(mainlabel)
        self.view.addSubview(subLabelRight)
        self.view.addSubview(subLabelLeft)
       
        backGroundView.addSubview(redChannel)
        backGroundView.addSubview(greenChannel2)
        backGroundView.addSubview(greenChannel)
        backGroundView.addSubview(yellowChannel2)
        backGroundView.addSubview(yellowChannel)
    }
    
    
    func configureConstraints() {
        // Add Constraints Here
        backGroundView.topAnchor.constraint(equalTo: view.topAnchor, constant: standardMargin).isActive = true
        backGroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: standardMargin).isActive = true
        backGroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -standardMargin).isActive = true
        backGroundView.bottomAnchor.constraint(equalTo: greenChannel2.bottomAnchor, constant: barMargin).isActive = true
        
        //subLabelLeft.trailingAnchor.constraint(equalTo: view.centerXAnchor, constant: -standardMargin).isActive = true
        subLabelLeft.centerXAnchor.constraint(equalTo: mainlabel.leftAnchor).isActive = true
        subLabelLeft.topAnchor.constraint(equalTo: backGroundView.bottomAnchor, constant: standardMargin).isActive = true
        subLabelLeft.font = subLabelLeft.font.withSize(subLabelFontSize)
        
        subLabelRight.centerXAnchor.constraint(equalTo: mainlabel.rightAnchor).isActive = true
        subLabelRight.topAnchor.constraint(equalTo: backGroundView.bottomAnchor, constant: standardMargin).isActive = true
        subLabelRight.font = subLabelLeft.font.withSize(subLabelFontSize)
        
        mainlabel.topAnchor.constraint(equalTo: subLabelLeft.bottomAnchor, constant: standardMargin).isActive = true
        mainlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainlabel.font = mainlabel.font.withSize(mainLabelFontSize)
        
        redChannel.translatesAutoresizingMaskIntoConstraints = false
        redChannel.topAnchor.constraint(equalTo: backGroundView.topAnchor, constant: barMargin).isActive = true
        redChannel.leadingAnchor.constraint(equalTo: backGroundView.leadingAnchor,constant: barMargin).isActive = true
        redChannel.trailingAnchor.constraint(equalTo: backGroundView.trailingAnchor,constant: -barMargin).isActive = true

        yellowChannel.translatesAutoresizingMaskIntoConstraints = false
        yellowChannel.topAnchor.constraint(equalTo: redChannel.bottomAnchor, constant: barMargin).isActive = true
        yellowChannel.leadingAnchor.constraint(equalTo: backGroundView.leadingAnchor,constant: barMargin).isActive = true
        yellowChannel.trailingAnchor.constraint(equalTo: backGroundView.trailingAnchor,constant: -barMargin).isActive = true
        
        yellowChannel2.translatesAutoresizingMaskIntoConstraints = false
        yellowChannel2.topAnchor.constraint(equalTo: yellowChannel.bottomAnchor, constant: barMargin).isActive = true
        yellowChannel2.leadingAnchor.constraint(equalTo: backGroundView.leadingAnchor,constant: barMargin).isActive = true
        yellowChannel2.trailingAnchor.constraint(equalTo: backGroundView.trailingAnchor,constant: -barMargin).isActive = true
        
        
        greenChannel.translatesAutoresizingMaskIntoConstraints = false
        greenChannel.topAnchor.constraint(equalTo: yellowChannel2.bottomAnchor, constant: barMargin).isActive = true
        greenChannel.leadingAnchor.constraint(equalTo: backGroundView.leadingAnchor,constant: barMargin).isActive = true
        greenChannel.trailingAnchor.constraint(equalTo: backGroundView.trailingAnchor,constant: -barMargin).isActive = true
        
        greenChannel2.translatesAutoresizingMaskIntoConstraints = false
        greenChannel2.topAnchor.constraint(equalTo: greenChannel.bottomAnchor, constant: barMargin).isActive = true
        greenChannel2.leadingAnchor.constraint(equalTo: backGroundView.leadingAnchor,constant: barMargin).isActive = true
        greenChannel2.trailingAnchor.constraint(equalTo: backGroundView.trailingAnchor,constant: -barMargin).isActive = true
        
    }
    
    
    // MARK: - Define Your Views Here
    
    var backGroundView: UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = DesignOneViewController.soundBarGray
        return view
    }()
    
    var mainlabel: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Audio Channels"
        label.textColor = .white
        return label
    }()
    
    var subLabelRight: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Right"
        label.textColor = .white
        return label
    }()
    
    var subLabelLeft: UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Left"
        label.textColor = .white
        return label
    }()
    
    let redChannel: AudioChannel = AudioChannel(barColor: soundBarRed, number: 5)
    let yellowChannel: AudioChannel = AudioChannel(barColor: soundBarYellow, number: 4)
    let yellowChannel2: AudioChannel = AudioChannel(barColor: soundBarYellow, number: 3)
    let greenChannel: AudioChannel = AudioChannel(barColor: soundBarGreen, number: 2)
    let greenChannel2: AudioChannel = AudioChannel(barColor: soundBarGreen, number: 1)


    
    
    // ex:
    // let grayContainer: UIView = ... your code here ...
    // let leftGreen1: UIView = ... your code here ...
    // let leftGreen2: UIView = ... your code here ...
    //
    
    
}
