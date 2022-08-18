//
//  SectionCell.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 18.08.2022.
//

import UIKit

class SectionCell: UITableViewCell {

  @IBOutlet weak var logoView: CustomImageView!
  @IBOutlet weak var progressView: UIProgressView!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  override func awakeFromNib() {
        super.awakeFromNib()
    layer.shadowColor = #colorLiteral(red: 0.2709999979, green: 0.1650000066, blue: 0.4860000014, alpha: 1).cgColor
    layer.shadowOpacity = 0.5
    layer.shadowOffset = CGSize(width: 0, height: 5)
    layer.shadowRadius = 10
    layer.masksToBounds = false
    layer.cornerRadius = 30
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  func configure(with section: Section) {
    logoView.image = section.icon
    titleLabel.text = section.title
    subtitleLabel.text = section.subtitle
    descriptionLabel.text = section.description
  }
}
