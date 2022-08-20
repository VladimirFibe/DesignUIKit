//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
  override func loadView() {
    let view = UIView()
    view.backgroundColor = .white
    
    let cardView = UIView()
    cardView.frame = CGRect(x: 20, y: 20, width: 200, height: 300)
    cardView.backgroundColor = .blue
    cardView.layer.cornerRadius = 30
    cardView.layer.cornerCurve = .continuous
    cardView.layer.shadowColor = UIColor.black.cgColor
    cardView.layer.shadowOffset = CGSize(width: 0, height: 10)
    cardView.layer.shadowOpacity = 0.5
    cardView.layer.shadowRadius = 10
    
    
    view.addSubview(cardView)
    self.view = view
  }
}
// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()
//    authorsLabel.text = "Taught by \(course?.authors?.formatted(.list(type: .and, widht: .standard)) ?? "Design+Code")"

//let text = ["Ivan", "Sergey", "Dmitry"].formatted(.list(type: .and, width: .standard))
//print(text)

Int.max
Int.min
UInt.max
UInt.min
Double.greatestFiniteMagnitude
Double.leastNormalMagnitude
Double.leastNonzeroMagnitude
Float.greatestFiniteMagnitude
Float.leastNormalMagnitude
Float.leastNonzeroMagnitude
