//
//  CustomTabBarController.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 19.08.2022.
//

import UIKit

class CustomTabBarController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tabBar.tintColor = UIColor(named: "TabBarTint")
    tabBar.layer.cornerRadius = 30
    tabBar.layer.masksToBounds = true
    tabBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    tabBar.selectionIndicatorImage = UIImage(named: "Selected")
    additionalSafeAreaInsets.bottom = 20
  }
}
