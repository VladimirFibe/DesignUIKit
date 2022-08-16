//
//  CustomImageView.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 16.08.2022.
//

import UIKit
@IBDesignable
class CustomImageView: UIImageView {
  @IBInspectable var cornerRadius: CGFloat = 0.0 {
    didSet {
      layer.cornerRadius = cornerRadius
      layer.cornerCurve = .continuous
      layer.masksToBounds = true
    }
  }

}
