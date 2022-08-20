//
//  SectionCollectionViewCell.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 20.08.2022.
//

import UIKit

class SectionCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var subtitleLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var logo: CustomImageView!
  @IBOutlet weak var banner: UIImageView!
  
  override public func layoutSubviews() {
    super.layoutSubviews()
    super.layoutIfNeeded()
  }
  override public func awakeFromNib() {
    super.awakeFromNib()
    layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
    layer.shadowOpacity = 0.25
    layer.shadowOffset = CGSize(width: 0, height: 5)
    layer.shadowRadius = 10
    layer.masksToBounds = false
    layer.cornerRadius = 30
    layer.cornerCurve = .continuous

  }
  
  override public func prepareForReuse() {
    super.prepareForReuse()
  }
}
