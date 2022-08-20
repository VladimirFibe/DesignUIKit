//
//  ExploreViewController.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 20.08.2022.
//

import UIKit
import Combine
class ExploreViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var collectionView: UICollectionView!
  @IBOutlet weak var popularCollectionView: UICollectionView!
  @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
  private var tokens: Set<AnyCancellable> = []
  override func viewDidLoad() {
        super.viewDidLoad()

    collectionView.delegate = self
    collectionView.dataSource = self
    collectionView.layer.masksToBounds = false
    
    popularCollectionView.delegate = self
    popularCollectionView.dataSource = self
    popularCollectionView.layer.masksToBounds = false
    
    tableView.delegate = self
    tableView.dataSource = self
    tableView.layer.masksToBounds = false
    tableView.publisher(for: \.contentSize)
      .sink { self.tableViewHeight.constant = $0.height }
      .store(in: &tokens)
    }

}

extension ExploreViewController: UICollectionViewDataSource, UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    collectionView == popularCollectionView ? handbooks.count : sections.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    if collectionView == popularCollectionView {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CourseCell", for: indexPath) as! CourseCell
      let course = handbooks[indexPath.item]
      cell.titleLabel.text = course.title
      cell.subtitleLabel.text = course.subtitle
      cell.descriptionLabel.text = course.description
      cell.gradient.colors = course.gradient
      cell.logo.image = course.icon
      cell.banner.image = course.banner
      return cell
    } else {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SectionCollectionViewCell", for: indexPath) as! SectionCollectionViewCell
      let section = sections[indexPath.item]
      cell.titleLabel.text = section.title
      cell.banner.image = section.banner
      cell.logo.image = section.icon
      cell.subtitleLabel.text = section.subtitle
      return cell
    }
  }
}

extension ExploreViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    topics.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TopicCell", for: indexPath) as! TopicCell
    let topic = topics[indexPath.row]
    cell.titleLabel.text = topic.title
    cell.logoImage.image = UIImage(systemName: topic.icon)
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }
  
}
