//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import ALDesign

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let imageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
        imageView.backgroundColor = .blue
        imageView.image = NaviIcon.sleep.filled
        imageView.sizeToFit()
        
        view.addSubview(imageView)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
