//
//  DesignThreeViewController.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Louis Tur on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class DesignThreeViewController: UIViewController, CellTitled {
    
    //   ----------------------------------
    //    DO NOT MODIFY THIS SECTION
    //    👇👇👇👇👇👇👇👇👇👇👇👇👇👇
    
    // MARK: - CellTitled Protocol
    
    // MARK: - CellTitled Protocol
    let smittenBackgroundColor = UIColor(red: 248.0/255.0, green: 231.0/255.0, blue: 28.0/255.0, alpha: 1.0)
    var titleForCell: String = "Design 3"
    
    lazy var bannerImageView: UIImageView = {
        let image = UIImage(named: "s_snape_wall")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    lazy var profileImageView: UIImageView = {
        let image = UIImage(named: "s_snape_profile")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        imageView.layer.cornerRadius = 15.0
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 2.0
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightBold)
        label.text = "Severus Snape"
        return label
    }()
    
    lazy var followLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Follow"
        label.font = UIFont.systemFont(ofSize: 16.0, weight: UIFontWeightMedium)
        label.backgroundColor = .blue
        label.textColor = .white
        return label
    }()
    
    lazy var likeLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Like"
        label.font = UIFont.systemFont(ofSize: 16.0, weight: UIFontWeightMedium)
        label.backgroundColor = .blue
        label.textColor = .white
        return label
    }()
    
    lazy var hexLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "Hex"
        label.font = UIFont.systemFont(ofSize: 16.0, weight: UIFontWeightMedium)
        label.backgroundColor = .blue
        label.textColor = .white
        return label
    }()
    
    lazy var contentView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = .orange
        return view
    }()
    //    ☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️☝️
    //    DO NOT MODIFY THIS SECTION
    //   ----------------------------------
    
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerImageView.isHidden = true
        profileImageView.isHidden = true
        nameLabel.isHidden = true
        contentView.isHidden = true
        followLabel.isHidden = true
        likeLabel.isHidden = true
        hexLabel.isHidden = true
        
//        self.view.translatesAutoresizingMaskIntoConstraints = false
        bannerImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        followLabel.translatesAutoresizingMaskIntoConstraints = false
        likeLabel.translatesAutoresizingMaskIntoConstraints = false
        hexLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.setupViewHierarchy()
        self.configurePortraitConstraints()
        
        nameLabel.textAlignment = .center
        likeLabel.textAlignment = .center
        followLabel.textAlignment = .center
        hexLabel.textAlignment = .center
    }
    
    func setupViewHierarchy() {
        self.view.backgroundColor = .white
        self.view.addSubview(bannerImageView)
        self.view.addSubview(profileImageView)
        self.view.addSubview(nameLabel)
        self.view.addSubview(contentView)
        self.view.addSubview(followLabel)
        self.view.addSubview(likeLabel)
        self.view.addSubview(hexLabel)
    }
    
    func configurePortraitConstraints() {
        bannerImageView.isHidden = false
        profileImageView.isHidden = false
        nameLabel.isHidden = false
        contentView.isHidden = false
        followLabel.isHidden = false
        likeLabel.isHidden = false
        hexLabel.isHidden = false
        
        self.edgesForExtendedLayout = []
        
        let bannerImageConstraints = [
            bannerImageView.topAnchor.constraint(equalTo: view.topAnchor),
            bannerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bannerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bannerImageView.heightAnchor.constraint(equalToConstant: 200.0)
        ]
        
        let profileImageConstraints = [
            profileImageView.centerYAnchor.constraint(equalTo: bannerImageView.bottomAnchor),
            profileImageView.centerXAnchor.constraint(equalTo: bannerImageView.centerXAnchor),
            profileImageView.heightAnchor.constraint(equalToConstant: 120.0),
            profileImageView.widthAnchor.constraint(equalToConstant: 120.0)
        ]
        
        let nameLabelConstraints = [
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8.0),
            nameLabel.centerXAnchor.constraint(equalTo: profileImageView.centerXAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 40.0),
            nameLabel.widthAnchor.constraint(equalToConstant: 150.0)
            ]
        
        let contentViewConstraints = [
            contentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
            contentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
            contentView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8.0),
            contentView.bottomAnchor.constraint(equalTo: followLabel.topAnchor, constant: -8.0),
            contentView.heightAnchor.constraint(equalToConstant: 300.0),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ]
        
        let followLabelConstraints = [
            followLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
            followLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0),
            followLabel.heightAnchor.constraint(equalToConstant: 20.0),
            followLabel.widthAnchor.constraint(equalToConstant: 120.0)
        ]
        
        let likeLabelConstraints = [
            likeLabel.firstBaselineAnchor.constraint(equalTo: followLabel.firstBaselineAnchor),
            likeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            likeLabel.heightAnchor.constraint(equalToConstant: 20.0),
            likeLabel.widthAnchor.constraint(equalToConstant: 120.0)
            ]
        
        let hexLabelConstraints = [
            hexLabel.firstBaselineAnchor.constraint(equalTo: followLabel.firstBaselineAnchor),
            hexLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0),
            hexLabel.heightAnchor.constraint(equalToConstant: 20.0),
            hexLabel.widthAnchor.constraint(equalToConstant: 120.0)
        ]
        
        let _ = [
            bannerImageConstraints,
            profileImageConstraints,
            nameLabelConstraints,
            contentViewConstraints,
            followLabelConstraints,
            likeLabelConstraints,
            hexLabelConstraints
            ].map{ $0.map{ $0.isActive = true } }
        
    }
    
    func configureLandscapeConstraints() {
        bannerImageView.isHidden = true
        profileImageView.isHidden = false
        nameLabel.isHidden = false
        contentView.isHidden = true
        followLabel.isHidden = false
        likeLabel.isHidden = false
        hexLabel.isHidden = false
        
        self.edgesForExtendedLayout = []
    
        nameLabel.textAlignment = .center
        
        let _ = [
            profileImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            profileImageView.bottomAnchor.constraint(equalTo: nameLabel.topAnchor),
            profileImageView.heightAnchor.constraint(equalToConstant: 120.0),
            profileImageView.widthAnchor.constraint(equalToConstant: 120.0),
            
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: profileImageView.centerXAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 50.0),
            nameLabel.widthAnchor.constraint(equalToConstant: 150.0),
            
            likeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8.0),
            likeLabel.centerXAnchor.constraint(equalTo: nameLabel.centerXAnchor),
            likeLabel.widthAnchor.constraint(equalToConstant: 120),
            likeLabel.heightAnchor.constraint(equalToConstant: 40),
            
            followLabel.topAnchor.constraint(equalTo: likeLabel.topAnchor),
            followLabel.trailingAnchor.constraint(equalTo: likeLabel.leadingAnchor, constant: -8.0),
            followLabel.widthAnchor.constraint(equalTo: likeLabel.widthAnchor),
            followLabel.heightAnchor.constraint(equalTo: likeLabel.heightAnchor),
            
            hexLabel.topAnchor.constraint(equalTo: likeLabel.topAnchor),
            hexLabel.leadingAnchor.constraint(equalTo: likeLabel.trailingAnchor, constant: 8.0),
            hexLabel.widthAnchor.constraint(equalTo: likeLabel.widthAnchor),
            hexLabel.heightAnchor.constraint(equalTo: likeLabel.heightAnchor)
            ].map { $0.isActive = true }
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
        let _ = bannerImageView.constraints.map { $0.isActive = false }
        let _ = profileImageView.constraints.map { $0.isActive = false }
        let _ = nameLabel.constraints.map { $0.isActive = false }
        let _ = contentView.constraints.map { $0.isActive = false }
        let _ = followLabel.constraints.map { $0.isActive = false }
        let _ = likeLabel.constraints.map { $0.isActive = false }
        let _ = hexLabel.constraints.map { $0.isActive = false }
        
        let currentCollection = self.traitCollection
        
        if (currentCollection.verticalSizeClass == .compact) && (newCollection.verticalSizeClass == .regular) {
            configurePortraitConstraints()
        }
        else {
            configureLandscapeConstraints()
        }
        
        super.willTransition(to: newCollection, with: coordinator)
    }
    
    
}
