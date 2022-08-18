//
//  Course.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 17.08.2022.
//

import UIKit

class Course {
  var title: String = ""
  var subtitle: String
  var description: String
  var icon: UIImage
  var banner: UIImage
  var authors: [String]?
  var gradient: [CGColor]?
  var background: UIImage?
  var section: [Section]?
  
  init(title: String,
       subtitle: String,
       description: String,
       icon: UIImage,
       banner: UIImage,
       authors: [String]? = nil,
       gradient: [CGColor]? = nil,
       background: UIImage? = nil,
       section: [Section]? = nil)
  
  {
    self.title = title
    self.subtitle = subtitle
    self.description = description
    self.icon = icon
    self.banner = banner
    self.authors = authors
    self.gradient = gradient
    self.background = background
    self.section = section
  }
}

let handbooks = [
    Course(title: "SwiftUI Handbook",
           subtitle: "80 sections - 9 hours",
           description: "Build an iOS app for iOS 15 with custom layouts, animations and more!",
           icon: #imageLiteral(resourceName: "SwiftUI.svg"),
           banner: #imageLiteral(resourceName: "Illustration 2.png"),
           authors: ["Stephanie Diep"],
           gradient: [UIColor(red: 0.387, green: 0.041, blue: 0.55, alpha: 1).cgColor, UIColor(red: 0.251, green: 0.555, blue: 0.835, alpha: 1).cgColor],
          section: sections),
    Course(title: "React Hooks Handbook",
           subtitle: "30 sections - 3 hours", description: "A comprehensive series of tutorials on React Hooks and more!", icon: #imageLiteral(resourceName: "Flutter"),
           banner: UIImage(named: "Illustration 4")!,
           authors: ["Meng To, Stephanie Diep"], gradient: [
        UIColor(red: 0.51, green: 0.255, blue: 0.737, alpha: 1).cgColor,
        UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1).cgColor,
        UIColor(red: 0.984, green: 0.647, blue: 0.545, alpha: 1).cgColor],
           section: sections)
]

let courses = [
    Course(title: "SwiftUI Concurrency",
           subtitle: "NEW VIDEO",
           description: "Build an iOS app for iOS 15 with custom layouts, animations and more!",
           icon: #imageLiteral(resourceName: "SwiftUI.svg"),
           banner: UIImage(named: "Illustration 4")!,
           authors: ["Meng To"],
           gradient: [UIColor(red: 0.387, green: 0.041, blue: 0.55, alpha: 1).cgColor, UIColor(red: 0.251, green: 0.555, blue: 0.835, alpha: 1).cgColor],
           background: UIImage(named: "Background 3"),
           section: sections),
    Course(title: "Flutter for Designers",
           subtitle: "20 sections - 3 hours",
           description: "Build a Flutter app for iOS and Android with custom layouts, animations and more!",
           icon: #imageLiteral(resourceName: "Flutter"),
           banner: UIImage(named: "Illustration 1")!,
           authors: ["Sai Kambampati"],
           gradient: [UIColor(red: 0.51, green: 0.255, blue: 0.737, alpha: 1).cgColor,
        UIColor(red: 0.883, green: 0.283, blue: 0.523, alpha: 1).cgColor,
        UIColor(red: 0.984, green: 0.647, blue: 0.545, alpha: 1).cgColor],
           background: UIImage(named: "Background 3"),
           section: sections),
    Course(title: "React Hooks Advanced",
           subtitle: "20 sections - 3 hours",
           description: "Build a React app with custom layouts, animations and more!",
           icon: #imageLiteral(resourceName: "React"),
           banner: UIImage(named: "Illustration 2")!,
           authors: ["Meng To"],
           gradient: [UIColor(red: 0.387, green: 0.041, blue: 0.55, alpha: 1).cgColor, UIColor(red: 0.251, green: 0.555, blue: 0.835, alpha: 1).cgColor],
           background: UIImage(named: "Background 5"),
           section: sections)
]

