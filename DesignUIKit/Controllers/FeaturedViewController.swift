//
//  ViewController.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 15.08.2022.
//

import UIKit
import Combine
class FeaturedViewController: UIViewController {

  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var cardView: UIView!
  @IBOutlet weak var courseTableView: UITableView!
  @IBOutlet weak var blurView: UIVisualEffectView!
  
  @IBOutlet weak var heightTableView: NSLayoutConstraint!
  
  private var tokens: Set<AnyCancellable> = []
  override func viewDidLoad() {
    super.viewDidLoad()
    setupViews()
  }
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let detailsVC = segue.destination as? CoursesViewController, let course = sender as? Course {
      detailsVC.course = course
    }
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
    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.layer.masksToBounds = false
    courseTableView.delegate = self
    courseTableView.dataSource = self
    courseTableView.layer.masksToBounds = false
    courseTableView.publisher(for: \.contentSize)
      .sink { self.heightTableView.constant = $0.height }
      .store(in: &tokens)
  }

}

extension FeaturedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! CourseCell
    let course = handbooks[indexPath.item]
    cell.titleLabel.text = course.title
    cell.subtitleLabel.text = course.subtitle
    cell.descriptionLabel.text = course.description
    cell.gradient.colors = course.gradient
    cell.logo.image = course.icon
    cell.banner.image = course.banner
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    handbooks.count
  }
}

extension FeaturedViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    1
  }
  func numberOfSections(in tableView: UITableView) -> Int {
    courses.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CourseTableCell", for: indexPath) as! CourseTableCell
    let course = courses[indexPath.section]
    cell.configure(with: course)
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    section == 0 ? 0 : 20
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    let course = courses[indexPath.section]
    performSegue(withIdentifier: "presentCourse", sender: course)
  }
  
  func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat { 0 }
}
