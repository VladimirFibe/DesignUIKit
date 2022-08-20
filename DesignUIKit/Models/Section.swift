//
//  Section.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 18.08.2022.
//

import UIKit

class Section {
    var title: String
    var subtitle: String
    var description: String
    var icon: UIImage?
    var banner: UIImage?

  init(title: String, subtitle: String, description: String, icon: UIImage? = nil, banner: UIImage? = nil) {
    self.title = title
    self.subtitle = subtitle
    self.description = description
    self.icon = icon
    self.banner = banner
  }
}

let sections = [
    Section(title: "Advanced Custom Layout",
            subtitle: "SwiftUI for iOS 15",
            description: "Build an iOS app for iOS 15 with custom layouts.",
            icon: #imageLiteral(resourceName: "SwiftUI.svg"),
            banner: UIImage(named: "Illustration 3")),
    Section(title: "Coding the Home View",
            subtitle: "SwiftUI Concurrency",
            description: "Learn about the formatted(date:time:) method and AsyncImage",
            icon: #imageLiteral(resourceName: "SwiftUI.svg"),
            banner: UIImage(named: "Illustration 2")),
    Section(title: "Colors and Shadows",
            subtitle: "Flutter for Designers",
            description: "Read about the design guidelines and how you can use color to maximize your best views",
            icon: #imageLiteral(resourceName: "Flutter.png"),
            banner: UIImage(named: "Illustration 1")),
]
