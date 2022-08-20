//
//  TopicCell.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 20.08.2022.
//

import UIKit

class TopicCell: UITableViewCell {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var logoImage: UIImageView!
  
  override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
