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
    //self.configureLandscapeConstraints()
    
   // NotificationCenter.default.addObserver(self, selector: #selector(self.rotated), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
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
    contentView.isHidden = false
    bannerImageView.translatesAutoresizingMaskIntoConstraints = false
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    contentView.translatesAutoresizingMaskIntoConstraints = false
    followLabel.translatesAutoresizingMaskIntoConstraints = false
    likeLabel.translatesAutoresizingMaskIntoConstraints = false
    hexLabel.translatesAutoresizingMaskIntoConstraints = false
    
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
    bannerImageView.isHidden = true
    contentView.isHidden = true
    
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    followLabel.translatesAutoresizingMaskIntoConstraints = false
    likeLabel.translatesAutoresizingMaskIntoConstraints = false
    hexLabel.translatesAutoresizingMaskIntoConstraints = false
    
    bannerImageView.translatesAutoresizingMaskIntoConstraints = true
    contentView.translatesAutoresizingMaskIntoConstraints = true
    
    _ = [
        bannerImageView.topAnchor.constraint(equalTo: view.topAnchor),
        bannerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        bannerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        bannerImageView.heightAnchor.constraint(equalToConstant: 200.0)
        ].map { $0.isActive = false }
    
    _ = [
        contentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8.0),
        contentView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8.0),
        contentView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8.0),
        contentView.bottomAnchor.constraint(equalTo: followLabel.topAnchor, constant: -8.0)
        ].map { $0.isActive = false }

    let profileImageConstraints = [
        // why doesn't this know where the middle of the view is in landsacpe!!!!????
        profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        profileImageView.heightAnchor.constraint(equalToConstant: 120.0),
        profileImageView.widthAnchor.constraint(equalToConstant: 120.0)
    ]
    
    let nameLabelConstraints = [
        nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8.0),
        nameLabel.centerXAnchor.constraint(equalTo: profileImageView.centerXAnchor),
    ]
    
    let followLabelConstraints = [
        followLabel.trailingAnchor.constraint(equalTo: likeLabel.leadingAnchor, constant: -8.0),
        followLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0)
    ]
    
    let likeLabelConstraints = [
        likeLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0),
        likeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    ]
    
    let hexLabelConstraints = [
        hexLabel.leadingAnchor.constraint(equalTo: likeLabel.trailingAnchor, constant: 8.0),
        hexLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0)
    ]

    let _ = [
        profileImageConstraints,
        nameLabelConstraints,
        followLabelConstraints,
        likeLabelConstraints,
        hexLabelConstraints
        ].map{ $0.map{ $0.isActive = true } }
  }
  
  override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
    // switch to landscape/portrait using UITraitCollection's info about size class
    
    self.view.removeConstraints(self.view.constraints)
    
    // this made it worse...
//    self.bannerImageView.removeConstraints(bannerImageView.constraints)
//    self.contentView.removeConstraints(contentView.constraints)
//    self.followLabel.removeConstraints(followLabel.constraints)
//    self.hexLabel.removeConstraints(hexLabel.constraints)
//    self.likeLabel.removeConstraints(likeLabel.constraints)
//    self.nameLabel.removeConstraints(nameLabel.constraints)
//    self.profileImageView.removeConstraints(profileImageView.constraints)
    
    let currentCollection = self.traitCollection
    
    if (currentCollection.verticalSizeClass == .compact) && (newCollection.verticalSizeClass == .regular) {
        print("portrait")
        configurePortraitConstraints()
    }
    else {
        print("landscape")
        configureLandscapeConstraints()
    }
    super.willTransition(to: newCollection, with: coordinator)
  }
    
    // found this solution on stack overflow, using notification center... doesn't work.
    //http://stackoverflow.com/questions/25666269/how-to-detect-orientation-change
    
//    func rotated() {
//        if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
//            print("landscape")
//            configureLandscapeConstraints()
//        }
//        if UIDeviceOrientationIsPortrait(UIDevice.current.orientation) {
//            print("portrait")
//            configurePortraitConstraints()
//        }
//        
//    }
  
  
}
