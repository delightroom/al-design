# ALDesign

## Typgoraphy 사용방법

```swift
import ALDesign

"Hello".hero
"Hello".hero.two
"Hello".hero.addColor(.onSurfacehighEmphasis)
"Hello".hero.addAlignment(.center)
"Hello".hero.two.addColor(.onSurfacehighEmphasis).addAlignment(.center)
```

`attributedString(:Typography,:NSTextAlignment,:ALColor)`은 deprecated 되었습니다.


## Colors

```swift
UIColor.background
```

## Icons

```swift
let premiumImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
premiumImageView.image = MissionPremiumIcon.premium.image
premiumImageView.tintColor = .black
premiumImageView.sizeToFit()

let premiumGradientImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
premiumGradientImageView.image = MissionPremiumIcon.premium.gradientImage
premiumGradientImageView.tintColor = .black
premiumGradientImageView.sizeToFit()

let mission16x16ImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 16, height: 16)))
mission16x16ImageView.image = MissionPremiumIcon.missionMath.image
mission16x16ImageView.tintColor = .black

let moreVerticalImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
moreVerticalImageView.image = CommonIcon.moreVertical.image
moreVerticalImageView.tintColor = .black
moreVerticalImageView.sizeToFit()

let back24x48ImageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: 48, height: 48)))
back24x48ImageView.backgroundColor = .white
back24x48ImageView.contentMode = .center
back24x48ImageView.image = CommonIcon.back.image
```
