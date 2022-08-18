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
  @IBOutlet weak var cardView: UIView!
  @IBOutlet weak var blurView: UIVisualEffectView!
  @IBOutlet weak var heightTableView: NSLayoutConstraint!
  
  private var tokens: Set<AnyCancellable> = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.rowHeight = UITableView.automaticDimension
    tableView.estimatedRowHeight = UITableView.automaticDimension
    tableView.publisher(for: \.contentSize)
      .sink { self.heightTableView.constant = $0.height }
      .store(in: &tokens)
    
    bannerImage.image = course?.banner
    backgroundImage.image = course?.background
    titleLabel.text = course?.title ?? ""
    subtitleLabel.text = course?.subtitle ?? ""
    descriptionLabel.text = course?.description ?? ""
    authorsLabel.text = "Taught by ..."
//    authorsLabel.text = "Taught by \(course?.authors?.formatted(.list(type: .and, widht: .standard)) ?? "Design+Code")"
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
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    UITableView.automaticDimension
  }
}
