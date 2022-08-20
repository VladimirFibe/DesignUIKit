//
//  Topic.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 20.08.2022.
//

import UIKit

class Topic {
    var title: String
    var icon: String

  init(title: String, icon: String) {
    self.title = title
    self.icon = icon
  }
}

let topics = [
  Topic(title: "iOS Development", icon: "iphone"),
  Topic(title: "UI Design", icon: "eyedropper"),
  Topic(title: "Web Development", icon: "desktopcomputer")
]
