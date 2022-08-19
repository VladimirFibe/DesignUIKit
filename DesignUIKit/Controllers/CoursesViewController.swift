//
//  CoursesViewController.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 18.08.2022.
//

import UIKit
import Combine
class CoursesViewController: UIViewController {
  var course: Course?
  @IBOutlet weak var bannerImage: UIImageView!
  @IBOutlet weak var backgroundImage: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var subtitleLabel: UILabel!
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var authorsLabel: UILabel!
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var menuButton: UIButton!
  @IBOutlet weak var iconImage: CustomImageView!
//  @IBOutlet weak var cardView: UIView!
//  @IBOutlet weak var blurView: UIVisualEffectView!
  @IBOutlet weak var heightTableView: NSLayoutConstraint!
  
  
  private var tokens: Set<AnyCancellable> = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.publisher(for: \.contentSize)
      .sink { self.heightTableView.constant = $0.height }
      .store(in: &tokens)
    
    bannerImage.image = course?.banner
    backgroundImage.image = course?.background
    titleLabel.text = course?.title ?? ""
    subtitleLabel.text = course?.subtitle ?? ""
    descriptionLabel.text = course?.description ?? ""
    iconImage.image = course?.icon
    let menu = UIMenu(title: "Course Options", options: .displayInline, children: [
      UIAction(title: "Share", image: UIImage(systemName: "square.and.arrow.up")) { _ in
        print("Share")
      },
      UIAction(title: "Take Test", image: UIImage(systemName: "highlighter")) { _ in
        print("Take Test")
      },
      UIAction(title: "Download", image: UIImage(systemName: "square.and.arrow.down")) { _ in
        print("Download")
      },
      UIAction(title: "Forums", image: UIImage(systemName: "chevron.left.forwardslash.chevron.right")) { _ in
        print("Forums")
      }
    ])
    menuButton.showsMenuAsPrimaryAction = true
    menuButton.menu = menu
    authorsLabel.text = "Taught by \(course?.authors?.formatted(.list(type: .and, width: .standard)) ?? "Design+Code")"
  }
  
  @IBAction func closeAction(_ sender: UIButton) {
    dismiss(animated: true)
  }
  
}

extension CoursesViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    course?.section?.count ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell", for: indexPath) as? SectionCell else { fatalError("Sorry!") }
    if let course = course,
       let section = course.section?[indexPath.row] {
      cell.configure(with: section)
    }
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }

}
