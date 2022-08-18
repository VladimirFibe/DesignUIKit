//
//  CourseTableCell.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 18.08.2022.
//

import UIKit

class CourseTableCell: UITableViewCell {

  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  
  @IBOutlet weak var bannerImage: UIImageView!
  @IBOutlet weak var backgroundImage: UIImageView!
  @IBOutlet weak var logoImage: UIImageView!
  
  override func awakeFromNib() {
        super.awakeFromNib()
      layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).cgColor
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
  func configure(with course: Course) {
    logoImage.image = course.icon
    bannerImage.image = course.banner
    backgroundImage.image = course.background
    titleLabel.text = course.title
    subtitleLabel.text = course.subtitle
    descriptionLabel.text = course.description
  }
}
