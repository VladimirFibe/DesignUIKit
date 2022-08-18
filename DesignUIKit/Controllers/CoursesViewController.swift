//
//  CoursesViewController.swift
//  DesignUIKit
//
//  Created by Vladimir Fibe on 18.08.2022.
//

import UIKit

class CoursesViewController: UIViewController {
  var course: Course?
    override func viewDidLoad() {
        super.viewDidLoad()

      print("This couse is \(course?.title)")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
