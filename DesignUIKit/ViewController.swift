//
//  ViewController.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 15.08.2022.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var cardView: UIView!
  @IBOutlet weak var blurView: UIVisualEffectView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
  }

  func setupViews() {
    cardView.layer.cornerRadius = 30
    cardView.layer.cornerCurve = .continuous
    blurView.layer.cornerRadius = 30
    blurView.layer.cornerCurve = .continuous
    blurView.layer.masksToBounds = true
    cardView.layer.shadowColor = #colorLiteral(red: 0.2709999979, green: 0.1650000066, blue: 0.4860000014, alpha: 1).cgColor
    cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
    cardView.layer.shadowOpacity = 0.5
    cardView.layer.shadowRadius = 20

  }

}

