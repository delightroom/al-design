//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import ALDesign

let naviIconImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
naviIconImageView.image = NaviIcon.sleep.filled
naviIconImageView.sizeToFit()

let label = UILabel()
label.attributedText = "Hello ALDesign".hero.two.addColor(UIColor.onSurfaceMediumEmphasis)
label.sizeToFit()

let premiumImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
premiumImageView.image = PremiumIcon.premium.image
premiumImageView.tintColor = .black
premiumImageView.sizeToFit()

let premiumGradientImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
premiumGradientImageView.image = PremiumIcon.premium.gradientImage
premiumGradientImageView.tintColor = .black
premiumImageView.sizeToFit()

let mission16x16ImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 16, height: 16)))
mission16x16ImageView.image = PremiumIcon.missionMath.image
mission16x16ImageView.tintColor = .black
