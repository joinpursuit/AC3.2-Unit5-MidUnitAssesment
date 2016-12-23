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
        
        self.setupViewHierarchy()
        self.configureConstraints()
        self.title = titleForCell
    }
    
    
    func setupViewHierarchy() {
        //Gray Container
        self.view.addSubview(grayContainer)
        grayContainer.backgroundColor = self.soundBarGray
        
        //Left Red View
        self.view.addSubview(leftRedView)
        leftRedView.backgroundColor = self.soundBarRed
        
        //Right Red View
        self.view.addSubview(rightRedView)
        rightRedView.backgroundColor = self.soundBarRed
        
        //Five Label
        self.view.addSubview(fiveLabel)
        fiveLabel.font = fiveLabel.font.withSize(self.mainLabelFontSize)
        fiveLabel.text = "5"
        
        //Left Yellow View 1
        self.view.addSubview(leftYellowView1)
        leftYellowView1.backgroundColor = self.soundBarYellow
        
        //Right Yellow View 1
        self.view.addSubview(rightYellowView1)
        rightYellowView1.backgroundColor = self.soundBarYellow
        
        //Four Label
        self.view.addSubview(fourLabel)
        fourLabel.font = fourLabel.font.withSize(self.mainLabelFontSize)
        fourLabel.text = "4"
        
        //Left Yellow View 2
        self.view.addSubview(leftYellowView2)
        leftYellowView2.backgroundColor = self.soundBarYellow
        
        //Right Yellow View 2
        self.view.addSubview(rightYellowView2)
        rightYellowView2.backgroundColor = self.soundBarYellow
        
        //Three Label
        self.view.addSubview(threeLabel)
        threeLabel.font = threeLabel.font.withSize(self.mainLabelFontSize)
        threeLabel.text = "3"
        
        //Left Green View 1
        self.view.addSubview(leftGreenView1)
        leftGreenView1.backgroundColor = self.soundBarGreen
        
        //Right Green View 1
        self.view.addSubview(rightGreenView1)
        rightGreenView1.backgroundColor = self.soundBarGreen
        
        //Two Label
        self.view.addSubview(twoLabel)
        twoLabel.font = twoLabel.font.withSize(self.mainLabelFontSize)
        twoLabel.text = "2"
        
        //Left Green View 2
        self.view.addSubview(leftGreenView2)
        leftGreenView2.backgroundColor = self.soundBarGreen
        
        //Right Green View 2
        self.view.addSubview(rightGreenView2)
        rightGreenView2.backgroundColor = self.soundBarGreen
        
        //One Label
        self.view.addSubview(oneLabel)
        oneLabel.font = oneLabel.font.withSize(self.mainLabelFontSize)
        oneLabel.text = "1"
        
        //Left Label
        self.view.addSubview(leftLabel)
        leftLabel.font = leftLabel.font.withSize(self.subLabelFontSize)
        leftLabel.textColor = .white
        leftLabel.text = "Left"
        
        //Right Label
        self.view.addSubview(rightLabel)
        rightLabel.font = rightLabel.font.withSize(self.subLabelFontSize)
        rightLabel.textColor = .white
        rightLabel.text = "Right"
        
        //Audio Channel Label
        self.view.addSubview(audioChannelLabel)
        audioChannelLabel.font = audioChannelLabel.font.withSize(self.mainLabelFontSize)
        audioChannelLabel.textColor = .white
        audioChannelLabel.text = "Audio Channels"
        
    }
    
    
    func configureConstraints() {
        //Gray Container
        self.grayContainer.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: self.standardMargin),
            self.grayContainer.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: self.standardMargin),
            self.grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: (self.standardMargin * -1)),
            self.grayContainer.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: (self.barMargin * -2))
            ].map { $0.isActive = true }
        
        //Left Red View
        self.leftRedView.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.leftRedView.heightAnchor.constraint(equalToConstant: self.barMargin - self.standardMargin),
            self.leftRedView.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: self.barMargin),
            self.leftRedView.topAnchor.constraint(equalTo: self.grayContainer.topAnchor, constant: self.barMargin),
            self.leftRedView.trailingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: (self.standardMargin * -2))
            ].map { $0.isActive = true }
        
        //Right Red View
        self.rightRedView.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.rightRedView.heightAnchor.constraint(equalTo: self.leftRedView.heightAnchor),
            self.rightRedView.leadingAnchor.constraint(equalTo: self.view.centerXAnchor, constant: (self.standardMargin * 2)),
            self.rightRedView.topAnchor.constraint(equalTo: self.leftRedView.topAnchor),
            self.rightRedView.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: (self.barMargin * -1))
            ].map { $0.isActive = true }

        //Five Label
        self.fiveLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.fiveLabel.leadingAnchor.constraint(equalTo: self.leftRedView.trailingAnchor, constant: self.standardMargin),
            self.fiveLabel.topAnchor.constraint(equalTo: self.leftRedView.topAnchor, constant: self.standardMargin),
            self.fiveLabel.trailingAnchor.constraint(equalTo: self.rightRedView.leadingAnchor, constant: (self.standardMargin * -1))
            ].map { $0.isActive = true }
        
        //Left Yellow View 1
        self.leftYellowView1.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.leftYellowView1.heightAnchor.constraint(equalTo: self.leftRedView.heightAnchor),
            self.leftYellowView1.leadingAnchor.constraint(equalTo: self.leftRedView.leadingAnchor),
            self.leftYellowView1.topAnchor.constraint(equalTo: self.leftRedView.bottomAnchor, constant: self.barMargin),
            self.leftYellowView1.trailingAnchor.constraint(equalTo: self.leftRedView.trailingAnchor)
            ].map { $0.isActive = true }
        
        //Right Yellow View 1
        self.rightYellowView1.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.rightYellowView1.heightAnchor.constraint(equalTo: self.rightRedView.heightAnchor),
            self.rightYellowView1.leadingAnchor.constraint(equalTo: self.rightRedView.leadingAnchor),
            self.rightYellowView1.topAnchor.constraint(equalTo: self.rightRedView.bottomAnchor, constant: self.barMargin),
            self.rightYellowView1.trailingAnchor.constraint(equalTo: self.rightRedView.trailingAnchor)
            ].map { $0.isActive = true }
        
        //Four Label
        self.fourLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.fourLabel.leadingAnchor.constraint(equalTo: self.leftYellowView1.trailingAnchor, constant: self.standardMargin),
            self.fourLabel.topAnchor.constraint(equalTo: self.leftYellowView1.topAnchor, constant: self.standardMargin),
            self.fourLabel.trailingAnchor.constraint(equalTo: self.rightYellowView1.leadingAnchor, constant: (self.standardMargin * -1))
            ].map { $0.isActive = true }
        
        //Left Yellow View 2
        self.leftYellowView2.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.leftYellowView2.heightAnchor.constraint(equalTo: self.leftYellowView1.heightAnchor),
            self.leftYellowView2.leadingAnchor.constraint(equalTo: self.leftYellowView1.leadingAnchor),
            self.leftYellowView2.topAnchor.constraint(equalTo: self.leftYellowView1.bottomAnchor, constant: self.barMargin),
            self.leftYellowView2.trailingAnchor.constraint(equalTo: self.leftYellowView1.trailingAnchor)
            ].map { $0.isActive = true }
        
        //Right Yellow View 2
        self.rightYellowView2.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.rightYellowView2.heightAnchor.constraint(equalTo: self.rightYellowView1.heightAnchor),
            self.rightYellowView2.leadingAnchor.constraint(equalTo: self.rightYellowView1.leadingAnchor),
            self.rightYellowView2.topAnchor.constraint(equalTo: self.rightYellowView1.bottomAnchor, constant: self.barMargin),
            self.rightYellowView2.trailingAnchor.constraint(equalTo: self.rightYellowView1.trailingAnchor)
            ].map { $0.isActive = true }
        
        //Three Label
        self.threeLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.threeLabel.leadingAnchor.constraint(equalTo: self.leftYellowView2.trailingAnchor, constant: self.standardMargin),
            self.threeLabel.topAnchor.constraint(equalTo: self.leftYellowView2.topAnchor, constant: self.standardMargin),
            self.threeLabel.trailingAnchor.constraint(equalTo: self.rightYellowView2.leadingAnchor, constant: (self.standardMargin * -1))
            ].map { $0.isActive = true }
        
        //Left Green View 1
        self.leftGreenView1.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.leftGreenView1.heightAnchor.constraint(equalTo: self.leftYellowView2.heightAnchor),
            self.leftGreenView1.leadingAnchor.constraint(equalTo: self.leftYellowView2.leadingAnchor),
            self.leftGreenView1.topAnchor.constraint(equalTo: self.leftYellowView2.bottomAnchor, constant: self.barMargin),
            self.leftGreenView1.trailingAnchor.constraint(equalTo: self.leftYellowView2.trailingAnchor)
            ].map { $0.isActive = true }
        
        //Right Green View 1
        self.rightGreenView1.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.rightGreenView1.heightAnchor.constraint(equalTo: self.rightYellowView2.heightAnchor),
            self.rightGreenView1.leadingAnchor.constraint(equalTo: self.rightYellowView2.leadingAnchor),
            self.rightGreenView1.topAnchor.constraint(equalTo: self.rightYellowView2.bottomAnchor, constant: self.barMargin),
            self.rightGreenView1.trailingAnchor.constraint(equalTo: self.rightYellowView2.trailingAnchor)
            ].map { $0.isActive = true }
        
        //Two Label
        self.twoLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.twoLabel.leadingAnchor.constraint(equalTo: self.leftGreenView1.trailingAnchor, constant: self.standardMargin),
            self.twoLabel.topAnchor.constraint(equalTo: self.leftGreenView1.topAnchor, constant: self.standardMargin),
            self.twoLabel.trailingAnchor.constraint(equalTo: self.rightGreenView1.leadingAnchor, constant: (self.standardMargin * -1))
            ].map { $0.isActive = true }
        
        //Left Green View 2
        self.leftGreenView2.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.leftGreenView2.heightAnchor.constraint(equalTo: self.leftGreenView1.heightAnchor),
            self.leftGreenView2.leadingAnchor.constraint(equalTo: self.leftGreenView1.leadingAnchor),
            self.leftGreenView2.topAnchor.constraint(equalTo: self.leftGreenView1.bottomAnchor, constant: self.barMargin),
            self.leftGreenView2.trailingAnchor.constraint(equalTo: self.leftGreenView1.trailingAnchor)
            ].map { $0.isActive = true }
        
        //Right Green View 2
        self.rightGreenView2.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.rightGreenView2.heightAnchor.constraint(equalTo: self.rightGreenView1.heightAnchor),
            self.rightGreenView2.leadingAnchor.constraint(equalTo: self.rightGreenView1.leadingAnchor),
            self.rightGreenView2.topAnchor.constraint(equalTo: self.rightGreenView1.bottomAnchor, constant: self.barMargin),
            self.rightGreenView2.trailingAnchor.constraint(equalTo: self.rightGreenView1.trailingAnchor)
            ].map { $0.isActive = true }
        
        //One Label
        self.oneLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.oneLabel.leadingAnchor.constraint(equalTo: self.leftGreenView2.trailingAnchor, constant: self.standardMargin),
            self.oneLabel.topAnchor.constraint(equalTo: self.leftGreenView2.topAnchor, constant: self.standardMargin),
            self.oneLabel.trailingAnchor.constraint(equalTo: self.rightGreenView2.leadingAnchor, constant: (self.standardMargin * -1))
            ].map { $0.isActive = true }
        
        //Left Label
        self.leftLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.leftLabel.centerXAnchor.constraint(equalTo: self.leftGreenView1.centerXAnchor),
            self.leftLabel.topAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: (self.standardMargin * 2))
            ].map { $0.isActive = true }
        
        //Right Label
        self.rightLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.rightLabel.centerXAnchor.constraint(equalTo: self.rightGreenView1.centerXAnchor),
            self.rightLabel.topAnchor.constraint(equalTo: self.grayContainer.bottomAnchor, constant: (self.standardMargin * 2))
            ].map { $0.isActive = true }
        
        //Audio Channel Label
        self.audioChannelLabel.translatesAutoresizingMaskIntoConstraints = false
        let _ = [
            self.audioChannelLabel.centerXAnchor.constraint(equalTo: self.grayContainer.centerXAnchor),
            self.audioChannelLabel.topAnchor.constraint(equalTo: self.leftLabel.bottomAnchor, constant: (self.standardMargin * 2)),
            self.audioChannelLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: (self.standardMargin * -2))
            ].map { $0.isActive = true }
    }
    
    
    // MARK: - Define Your Views Here
    let grayContainer: UIView = UIView()
    let leftRedView: UIView = UIView()
    let rightRedView: UIView = UIView()
    let fiveLabel: UILabel = UILabel()
    let leftYellowView1: UIView = UIView()
    let rightYellowView1: UIView = UIView()
    let fourLabel: UILabel = UILabel()
    let leftYellowView2: UIView = UIView()
    let rightYellowView2: UIView = UIView()
    let threeLabel: UILabel = UILabel()
    let leftGreenView1: UIView = UIView()
    let rightGreenView1: UIView = UIView()
    let twoLabel: UILabel = UILabel()
    let leftGreenView2: UIView = UIView()
    let rightGreenView2: UIView = UIView()
    let oneLabel: UILabel = UILabel()
    let leftLabel: UILabel = UILabel()
    let rightLabel: UILabel = UILabel()
    let audioChannelLabel: UILabel = UILabel()
    
}
