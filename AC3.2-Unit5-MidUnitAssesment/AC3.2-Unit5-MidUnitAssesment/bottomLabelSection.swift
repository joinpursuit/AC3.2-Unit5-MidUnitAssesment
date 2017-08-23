//
//  leftGreen1.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Amber Spadafora on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class bottomLabelSection: UIView {
    
    var leftLabel = UILabel()
    var rightLabel = UILabel()
    var audioChannelsLabel = UILabel()
    fileprivate lazy var labelView: UIStackView = {
        return self.createLabelStack()
    }()
    fileprivate lazy var stackedLabels: UIStackView = {
        return self.createStack()
    }()
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        setup()
        setupConstraints()
    }
    
    func setup() {
        addSubview(stackedLabels)
    }
    
    func setupConstraints() {
        stackedLabels.translatesAutoresizingMaskIntoConstraints = false
        
        let _ = [
            stackedLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackedLabels.topAnchor.constraint(equalTo: topAnchor, constant: 8.0)
            ].map{ $0.isActive = true}
        
    }
    
    
    func createLabelStack() -> UIStackView {
        leftLabel.font = UIFont(name: "AvenirNext", size: 18.0)
        leftLabel.textColor = UIColor.white
        leftLabel.text = "Left"
        
        rightLabel.font = UIFont(name: "AvenirNext", size: 18.0)
        rightLabel.textColor = UIColor.white
        rightLabel.text = "Right"
        
        var labels = [UILabel]()
        labels.append(leftLabel)
        labels.append(rightLabel)
      
        
        let labelView = UIStackView(arrangedSubviews: labels)
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.axis = .horizontal
        labelView.distribution = .equalSpacing
        labelView.spacing = 80.0
        return labelView
    }
    
    func createStack() -> UIStackView {
        audioChannelsLabel.font = UIFont(name: "AvenirNext", size: 24.0)
        audioChannelsLabel.textColor = UIColor.white
        audioChannelsLabel.text = "Audio Channels"
        
        
        let subViews = [labelView, audioChannelsLabel] as [Any]
        
        let stackedView = UIStackView(arrangedSubviews: subViews as! [UIView])
        stackedView.translatesAutoresizingMaskIntoConstraints = false
        stackedView.axis = .vertical
        stackedView.alignment = .center
        stackedView.distribution = .equalSpacing
        stackedView.spacing = 40.0
        return stackedView
    }
    
}
