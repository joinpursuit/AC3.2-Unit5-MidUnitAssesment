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
        
        setupViewHierarchy()
        configureConstraints()
    }
    
    
    func setupViewHierarchy() {
        // Add Views Here
        view.addSubview(grayContainer)
        self.grayContainer.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(leftRed)
        self.leftRed.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rightRed)
        self.rightRed.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(leftYellow1)
        self.leftYellow1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rightYellow1)
        self.rightYellow1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(leftYellow2)
        self.leftYellow2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rightYellow2)
        self.rightYellow2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(leftGreen1)
        self.leftGreen1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rightGreen1)
        self.rightGreen1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(leftGreen2)
        self.leftGreen2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rightGreen2)
        self.rightGreen2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(audioLabel)
        self.audioLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(leftLabel)
        self.leftLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rightLabel)
        self.rightLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func configureConstraints() {
        let _ = [
            grayContainer.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            grayContainer.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            grayContainer.topAnchor.constraint(equalTo: self.view.topAnchor),
            grayContainer.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -150.0)
            ].map{$0.isActive = true}
        
        let _ = [
            leftRed.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            leftRed.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            leftRed.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: 8.0),
          leftRed.topAnchor.constraint(equalTo: self.grayContainer.topAnchor, constant: 70.0)

            ].map{$0.isActive = true}
        
        let _ = [
            rightRed.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            rightRed.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            rightRed.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0),
            rightRed.topAnchor.constraint(equalTo: self.grayContainer.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}
        
        let _ = [
            leftYellow1.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            leftYellow1.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            leftYellow1.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: 8.0),
            leftYellow1.topAnchor.constraint(equalTo: self.leftRed.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}

        let _ = [
            rightYellow1.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            rightYellow1.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            rightYellow1.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0),
            rightYellow1.topAnchor.constraint(equalTo: self.rightRed.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}

        let _ = [
            leftYellow2.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            leftYellow2.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            leftYellow2.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: 8.0),
            leftYellow2.topAnchor.constraint(equalTo: self.leftYellow1.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}

        let _ = [
            rightYellow2.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            rightYellow2.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            rightYellow2.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0),
            rightYellow2.topAnchor.constraint(equalTo: self.rightYellow1.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}

        
        let _ = [
            leftGreen1.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            leftGreen1.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            leftGreen1.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: 8.0),
            leftGreen1.topAnchor.constraint(equalTo: self.leftYellow2.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}

        let _ = [
            rightGreen1.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            rightGreen1.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            rightGreen1.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0),
            rightGreen1.topAnchor.constraint(equalTo: self.rightYellow2.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}

        let _ = [
            leftGreen2.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            leftGreen2.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            leftGreen2.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: 8.0),
            leftGreen2.topAnchor.constraint(equalTo: self.leftGreen1.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}

        let _ = [
            rightGreen2.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            rightGreen2.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            rightGreen2.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -8.0),
            rightGreen2.topAnchor.constraint(equalTo: self.rightGreen1.topAnchor, constant: 70.0)
            ].map{$0.isActive = true}
        
        let _ = [
            audioLabel.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            audioLabel.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            audioLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20.0),
            audioLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
            ].map{$0.isActive = true}
        
        let _ = [
            leftLabel.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            leftLabel.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            leftLabel.leadingAnchor.constraint(equalTo: self.grayContainer.leadingAnchor, constant: 20.0),
            leftLabel.bottomAnchor.constraint(equalTo: self.audioLabel.topAnchor, constant: -20.0)
            ].map{$0.isActive = true}
        
        let _ = [
            rightLabel.widthAnchor.constraint(equalTo: self.grayContainer.widthAnchor, multiplier: 0.3),
            rightLabel.heightAnchor.constraint(equalTo: self.grayContainer.heightAnchor, multiplier: 0.1),
            rightLabel.trailingAnchor.constraint(equalTo: self.grayContainer.trailingAnchor, constant: -20.0),
            rightLabel.bottomAnchor.constraint(equalTo: self.audioLabel.topAnchor, constant: -20.0)
            ].map{$0.isActive = true}
        
       
    }
    
    
    // MARK: - Define Your Views Here
    
    lazy var grayContainer: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
    lazy var leftGreen1: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var leftGreen2: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var rightGreen1: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var rightGreen2: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    lazy var leftYellow1: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var leftYellow2: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var rightYellow1: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var rightYellow2: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    lazy var leftRed: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var rightRed: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    lazy var rightLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Right"
        label.textColor = .white
        return label
    }()
    
    lazy var leftLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Left"
        label.textColor = .white
        return label
    }()
    
    lazy var audioLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Audio Channel"
        label.textColor = .white
        return label
    }()
}
