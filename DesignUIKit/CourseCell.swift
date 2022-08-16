//
//  CourseCell.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 16.08.2022.
//

import UIKit

class CourseCell: UICollectionViewCell {
  
  let gradient = CAGradientLayer()
  
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var progressView: UIProgressView!
  @IBOutlet weak var logo: CustomImageView!
  @IBOutlet weak var banner: UIImageView!
  @IBOutlet weak var overlay: UIView!
  override func layoutSubviews() {
    super.layoutSubviews()
    super.layoutIfNeeded()
  }
  override func awakeFromNib() {
    super.awakeFromNib()
    layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
    layer.shadowOpacity = 0.25
    layer.shadowOffset = CGSize(width: 0, height: 5)
    layer.shadowRadius = 10
    layer.masksToBounds = false
    layer.cornerRadius = 30
    layer.cornerCurve = .continuous
    
    gradient.startPoint = .zero
    gradient.endPoint = CGPoint(x: 1, y: 1)
    gradient.frame = overlay.frame
    gradient.cornerCurve = .continuous
    gradient.cornerRadius = 30
  }
}
