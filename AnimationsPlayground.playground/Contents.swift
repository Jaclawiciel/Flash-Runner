//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
    }
}

// Present the view controller in the Live View window
let myViewController = MyViewController()

// Lights view
let lightsViewFrame = CGRect(x: 16.0, y: 16.0, width: 343.0, height: 561.0)
let lightsView = UIView(frame: lightsViewFrame)
lightsView.backgroundColor = .black

myViewController.view.addSubview(lightsView)

// Red color
let barColorDimmed = UIColor(red: 208/255, green: 2/255, blue: 27/255, alpha: 0.1)
let barColorOpaque = UIColor(red: 208/255, green: 2/255, blue: 27/255, alpha: 1)
// Border color
let borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)

// Light 1
let lightFrameX: CGFloat = 0
let lightFrameY: CGFloat = (lightsViewFrame.size.height - (lightsViewFrame.size.height - 120)) / 2
let lightFrameWidth: CGFloat = ((lightsViewFrame.size.width - (4 * 25)) / 5) * 0.33
let lightFrameHeight: CGFloat = lightsViewFrame.size.height - 120

let lightFrame = CGRect(x: lightFrameX, y: lightFrameY, width: lightFrameWidth, height: lightFrameHeight)
let lightView = UIView(frame: lightFrame)
lightView.backgroundColor = barColorDimmed
lightView.layer.borderWidth = 2
lightView.layer.borderColor = borderColor.cgColor
lightView.layer.cornerRadius = 6
lightsView.addSubview(lightView)

print(lightsView.frame.width / 2)
print(lightView.frame.width)

let barToAnimate = myViewController.view.subviews[0].subviews[0]
UIView.animate(withDuration: 1.0, delay: 0, options: [.repeat, .autoreverse], animations: {
    lightView.backgroundColor = barColorOpaque
}, completion: nil)



PlaygroundPage.current.liveView = myViewController
