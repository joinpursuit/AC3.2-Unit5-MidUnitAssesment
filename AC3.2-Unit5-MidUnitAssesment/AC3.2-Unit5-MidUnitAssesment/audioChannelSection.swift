//
//  audioChannelSection.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Amber Spadafora on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class audioChannelSection: UIView {
    
    var label1 = UILabel()
    var label2 = UILabel()
    var label3 = UILabel()
    var label4 = UILabel()
    var label5 = UILabel()

    lazy var redSoundBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var beigeSoundBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var secondbeigeSoundBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var greenSoundBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var secondgreenSoundBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var redBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 241.0/255, green: 165.0/255.0, blue: 147.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var beigeBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var secondBSoundBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 251.0/255, green: 214.0/255.0, blue: 180.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var greenBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    lazy var secondgreenBttn: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 104.0/255.0, green: 177.0/255.0, blue: 137.0/255.0, alpha: 1.0)
        view.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        view.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
        return view
    }()
    
    
    
    fileprivate lazy var stackedChannels: UIStackView = {
        return self.createStack()
    }()
    
    fileprivate lazy var secStackedChannels: UIStackView = {
        return self.createSecondStack()
    }()
    
    fileprivate lazy var stackedNumLabels: UIStackView = {
        return self.stackOfNumLabels()
    }()
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        setup()
        setupConstraints()
    }
    
    func setup() {
        addSubview(stackedChannels)
        addSubview(secStackedChannels)
        addSubview(stackedNumLabels)
    }
    
    func setupConstraints() {
        stackedChannels.translatesAutoresizingMaskIntoConstraints = false
        secStackedChannels.translatesAutoresizingMaskIntoConstraints = false
        stackedNumLabels.translatesAutoresizingMaskIntoConstraints = false
        
        let _ = [
            stackedChannels.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackedChannels.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0)
            ].map{ $0.isActive = true}
        let _ = [
            stackedNumLabels.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackedNumLabels.leadingAnchor.constraint(equalTo: stackedChannels.trailingAnchor, constant: 8.0),
            stackedNumLabels.trailingAnchor.constraint(equalTo: secStackedChannels.leadingAnchor, constant: -8.0)
            ].map{ $0.isActive = true}
        
        let _ = [
            secStackedChannels.centerYAnchor.constraint(equalTo: centerYAnchor),
            secStackedChannels.leadingAnchor.constraint(equalTo: stackedNumLabels.trailingAnchor, constant: 8.0),
            secStackedChannels.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0)
            ].map{ $0.isActive = true}
        
    }
    
    func createStack() -> UIStackView {
        
        let subViews = [redBttn, beigeBttn, secondBSoundBttn, greenSoundBttn, secondgreenSoundBttn] as [Any]
        
        let stackedView = UIStackView(arrangedSubviews: subViews as! [UIView])
        stackedView.translatesAutoresizingMaskIntoConstraints = false
        stackedView.axis = .vertical
        stackedView.alignment = .leading
        stackedView.distribution = .equalSpacing
        stackedView.spacing = 30.0
        return stackedView
    }
    
    func createSecondStack() -> UIStackView {
        
        let subViews = [redSoundBttn, beigeSoundBttn, secondbeigeSoundBttn, greenBttn, secondgreenBttn] as [Any]
        
        let stackedView = UIStackView(arrangedSubviews: subViews as! [UIView])
        stackedView.translatesAutoresizingMaskIntoConstraints = false
        stackedView.axis = .vertical
        stackedView.alignment = .trailing
        stackedView.distribution = .equalSpacing
        stackedView.spacing = 30.0
        return stackedView
    }
    
    func stackOfNumLabels() -> UIStackView {
        label1.text = "1"
        label2.text = "2"
        label3.text = "3"
        label4.text = "4"
        label5.text = "5"
        
        label1.heightAnchor.constraint(equalToConstant: 40.0)
        label2.heightAnchor.constraint(equalToConstant: 40.0)
        label3.heightAnchor.constraint(equalToConstant: 40.0)
        label4.heightAnchor.constraint(equalToConstant: 40.0)
        label5.heightAnchor.constraint(equalToConstant: 40.0)
        
        label1.font = UIFont(name: "AvenirNext", size: 18.0)
        

        
        let labels: [UIView] = [label1, label2, label3, label4, label5]
        
        let stackedView = UIStackView(arrangedSubviews: labels)
        stackedView.translatesAutoresizingMaskIntoConstraints = false
        stackedView.axis = .vertical
        stackedView.alignment = .trailing
        stackedView.distribution = .equalSpacing
        stackedView.spacing = 30.0
        return stackedView
    }
    

}
