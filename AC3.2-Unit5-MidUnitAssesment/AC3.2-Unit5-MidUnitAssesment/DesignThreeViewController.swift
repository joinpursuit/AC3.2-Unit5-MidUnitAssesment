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
    
    bannerImageView.translatesAutoresizingMaskIntoConstraints = false
    profileImageView.translatesAutoresizingMaskIntoConstraints = false
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    contentView.translatesAutoresizingMaskIntoConstraints = false
    followLabel.translatesAutoresizingMaskIntoConstraints = false
    likeLabel.translatesAutoresizingMaskIntoConstraints = false
    hexLabel.translatesAutoresizingMaskIntoConstraints = false

    self.edgesForExtendedLayout = []
  }
  
  func configurePortraitConstraints() {
    
    // 6. remove any constraints for affected views that are owned by self.view
    self.prepareForRotation([profileImageView, contentView, nameLabel, followLabel, hexLabel, likeLabel])
    
    // 7. Remove banner image's constraints again in order to set height
    bannerImageView.removeConstraints(bannerImageView.constraints)
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
    
    contentView.removeConstraints(contentView.constraints)
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
    
    // 1. remove the constraints for views that are owned by self.view
    self.prepareForRotation([profileImageView, contentView, nameLabel, followLabel, hexLabel, likeLabel])
    
    // 2. remove the height constraint, which is owned by its view
    bannerImageView.removeConstraints(bannerImageView.constraints)
    let bannerImageContraints = [
        // 3. set height constraint to 0.0 to effectively hide the view
        bannerImageView.heightAnchor.constraint(equalToConstant: 0.0)
    ]
    
    contentView.removeConstraints(contentView.constraints)
    // setting the leading equal to the trailing and the top equal to the bottom so that it doesn't appear
    let contentViewConstraints = [
        contentView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
        contentView.topAnchor.constraint(equalTo: self.view.topAnchor),
        contentView.trailingAnchor.constraint(equalTo: contentView.leadingAnchor),
        contentView.bottomAnchor.constraint(equalTo: contentView.topAnchor)
    ]
    
    // 4. Set x/y position for profile image, since it was removed by removeParentOwnedConstraints
    //    - profile image owns its own width/height constraints, so nothing needs to change there as
    //      it was not removed by calling removeParentOwnedConstraints
    let profileImageConstraints = [
        profileImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        profileImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
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
        bannerImageContraints,
        contentViewConstraints,
        profileImageConstraints,
        nameLabelConstraints,
        followLabelConstraints,
        likeLabelConstraints,
        hexLabelConstraints
        ].map{ $0.map{ $0.isActive = true } }
  }
  
  override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
    // switch to landscape/portrait using UITraitCollection's info about size class
    super.willTransition(to: newCollection, with: coordinator)
//    self.view.removeConstraints(self.view.constraints) 
    
    let currentCollection = self.traitCollection
    
    if (currentCollection.verticalSizeClass == .compact)  {
        print("portrait")
        configurePortraitConstraints()
    }
    else {
        print("landscape")
        configureLandscapeConstraints()
    }
}
    
    // MARK: - Helpers
    
    /// Calls `removeParentOwnedConstraints(from:)` on all views passed
    /// - parameter views: An array of `UIView` who's constraints you'd like to remove from their parent view.
    /// - seealso: `removeParentOwnedConstraints(from:)`
    func prepareForRotation(_ views: [UIView]) {
        let _ = views.map{ removeParentOwnedConstraints(from: $0) }
    }
    
    /// Removes constraints owned by a view's `superview`, if it exists. Does nothing if `view` does not have a `superview`
    /// - paramter thisView: A `UIView` who's constraints you'd like to remove from its parent view.
    func removeParentOwnedConstraints(from thisView: UIView) {
        
        guard let parentView = thisView.superview else {
            return
        }
        
        let constraintsOwnedByParentView = parentView.constraints.filter { (constraint) -> Bool in
            guard let secondItem = constraint.secondItem else { return false }
            
            if constraint.firstItem === thisView || secondItem === thisView {
                return true
            }
            
            // 👆 this up here acheives the same result as this down here 👇
            
//            if constraint.firstItem as! UIView == thisView || secondItem as! UIView == thisView {
//                return true
//            }
            
            return false
        }
        
        parentView.removeConstraints(constraintsOwnedByParentView)
    }
    
}
