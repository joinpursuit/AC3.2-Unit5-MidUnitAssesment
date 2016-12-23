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
    
    self.setupViewHierarchy()
    self.configurePortraitConstraints()
//    self.configureLandscapeConstraints()
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
    bannerImageView.translatesAutoresizingMaskIntoConstraints = false
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    contentView.translatesAutoresizingMaskIntoConstraints = false
    followLabel.translatesAutoresizingMaskIntoConstraints = false
    likeLabel.translatesAutoresizingMaskIntoConstraints = false
    hexLabel.translatesAutoresizingMaskIntoConstraints = false
    
    self.edgesForExtendedLayout = []
    
    bannerImageView.isHidden = false
    contentView.isHidden = false
    
    
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
    ]
    
    let contentViewConstraints = [
      contentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
      contentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
      contentView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8.0),
      contentView.bottomAnchor.constraint(equalTo: followLabel.topAnchor, constant: -8.0)
    ]
    
    let followLabelConstraints = [
      followLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
      followLabel.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8.0)
    ]
    
    let likeLabelConstraints = [
      likeLabel.firstBaselineAnchor.constraint(equalTo: followLabel.firstBaselineAnchor),
      likeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
    ]
    
    let hexLabelConstraints = [
      hexLabel.firstBaselineAnchor.constraint(equalTo: followLabel.firstBaselineAnchor),
      hexLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0)
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
    bannerImageView.translatesAutoresizingMaskIntoConstraints = false
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    contentView.translatesAutoresizingMaskIntoConstraints = false
    followLabel.translatesAutoresizingMaskIntoConstraints = false
    likeLabel.translatesAutoresizingMaskIntoConstraints = false
    hexLabel.translatesAutoresizingMaskIntoConstraints = false
    
    bannerImageView.isHidden = true
    contentView.isHidden = true
    
    self.edgesForExtendedLayout = []
    
    let profileImageConstraints = [
        profileImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        profileImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
        profileImageView.heightAnchor.constraint(equalToConstant: 120.0),
        profileImageView.widthAnchor.constraint(equalToConstant: 120.0)
        ]
    
    let nameLabelConstraints = [
        nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 16.0),
        nameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor)
//        nameLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8.0),
//        nameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0)
        ]
    
    let likeLabelConstraints = [
        likeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8.0),
        likeLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
    
    let followLabelConstraints = [
        followLabel.centerYAnchor.constraint(equalTo: likeLabel.centerYAnchor),
        followLabel.trailingAnchor.constraint(equalTo: likeLabel.leadingAnchor, constant: -8.0)
    ]
    
    let hexLabelConstraints = [
        hexLabel.centerYAnchor.constraint(equalTo: likeLabel.centerYAnchor),
        hexLabel.leadingAnchor.constraint(equalTo: likeLabel.trailingAnchor, constant: 8.0)
    ]
        
    _ = [
        profileImageConstraints,
        nameLabelConstraints,
        followLabelConstraints,
        likeLabelConstraints,
        hexLabelConstraints
        ].map { $0.map { $0.isActive = true } }
  }
  
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        
        // switch to landscape/portrait using UITraitCollection's info about size class
        let oldTraitCollection = self.traitCollection
        //print(">>\n\n\n")
        print(oldTraitCollection)
        //print(">>\n\n\n")
        print(newCollection)
        super.willTransition(to: newCollection, with: coordinator)
        
            let _ = [
                self.profileImageView.constraints,
                self.nameLabel.constraints,
                self.contentView.constraints,
                self.bannerImageView.constraints,
                self.hexLabel.constraints,
                self.likeLabel.constraints,
                self.followLabel.constraints
                ].map { $0.map{ $0.isActive = false } }
        
        self.view.removeConstraints(view.constraints)
        
        if (oldTraitCollection.verticalSizeClass == .regular) && (newCollection.verticalSizeClass == .compact) {
            configurePortraitConstraints()
        } else {
            configureLandscapeConstraints()
        }
    }
    
//    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//        
//        
//        let _ = self.blueView.constraints.map { $0.isActive = false }
//        let _ = self.redView.constraints.map { $0.isActive = false }
//        self.view.removeConstraints(self.view.constraints)
//        let currentCollection = self.traitCollection
//        
//        if (currentCollection.verticalSizeClass == .compact) && (newCollection.verticalSizeClass == .regular) {
//            exerciseTwo()
//        }
//        else {
//            exerciseFour()
//        }
//        
//        super.willTransition(to: newCollection, with: coordinator)
//    }
}

