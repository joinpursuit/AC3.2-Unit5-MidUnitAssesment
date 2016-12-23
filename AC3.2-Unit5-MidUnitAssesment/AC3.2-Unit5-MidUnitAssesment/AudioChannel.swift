//
//  AudioChannel.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Jermaine Kelly on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class AudioChannel: UIView {
    
    var channelColor: UIColor = .white
    var channelNumber: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    convenience init(barColor: UIColor, number: Int){
        self.init()
        
        channelColor = barColor
        channelNumber = number
        setUpView()
    }
    
    private func setUpView(){
        print("\(channelColor) setUp")
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let leftbar: UIView = {
            let view: UIView = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            print(self.frame.height)
            view.backgroundColor = channelColor
            return view
        }()
        
        let rightbar: UIView = {
            let view: UIView = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = channelColor
            return view
        }()
        
        let channelLabel: UILabel = {
            let label: UILabel = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.text = String(channelNumber)
            label.font = UIFont.boldSystemFont(ofSize: 20)
            return label
        }()
        
        self.addSubview(leftbar)
        self.addSubview(rightbar)
        self.addSubview(channelLabel)
        
        
        leftbar.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        leftbar.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        leftbar.trailingAnchor.constraint(equalTo: channelLabel.leadingAnchor, constant: -15).isActive = true
        leftbar.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    
        channelLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        channelLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        rightbar.leadingAnchor.constraint(equalTo: channelLabel.trailingAnchor, constant: 15).isActive = true
        rightbar.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        rightbar.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        rightbar.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true


    }
    
    
    
    
    
    
}


