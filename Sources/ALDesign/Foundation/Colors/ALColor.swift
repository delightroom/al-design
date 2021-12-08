//
//  ALColor.swift
//  
//
//  Created by smis on 2021/07/05.
//

import UIKit

extension UIColor {
    public static func white(_ value: Int) -> UIColor {
        let result: UIColor
        switch value {
        case 50: result = UIColor(hexString: "#F7FAFF")
        case 100: result = UIColor(hexString: "#F2F6FF")
        case 200: result = UIColor(hexString: "#EDF1FA")
        case 300: result = UIColor(hexString: "#E6ECF7")
        case 400: result = UIColor(hexString: "#DDE3F0")
        case 500: result = UIColor(hexString: "#D5DCEB")
        case 600: result = UIColor(hexString: "#CCD3E3")
        case 700: result = UIColor(hexString: "#C2CADA")
        case 800: result = UIColor(hexString: "#B4BDCF")
        case 900: result = UIColor(hexString: "#ABB3C4")
        default: result = .white
        }
        return result
    }
    
    public static func black(_ value: Int) -> UIColor {
        let result: UIColor
        switch value {
        case 50: result = UIColor(hexString: "#15171C")
        case 100: result = UIColor(hexString: "#1D1F26")
        case 200: result = UIColor(hexString: "#24272E")
        case 300: result = UIColor(hexString: "#2F333D")
        case 400: result = UIColor(hexString: "#3E434F")
        case 500: result = UIColor(hexString: "#4B515E")
        case 600: result = UIColor(hexString: "#585F6E")
        case 700: result = UIColor(hexString: "#666D7D")
        case 800: result = UIColor(hexString: "#747C8C")
        case 900: result = UIColor(hexString: "#858E9E")
        default: result = .black
        }
        return result
    }

    /// light: white100
    /// dark: black50
    public static var background: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(100)
        default: result = .black(50)
        }
        return result
    }
    
    /// dark: white200
    /// light: black300
    public static var appbar: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(200)
        default: result = .black(300)
        }
        return result
    }
    
    /// dark: white400
    /// light: black400
    public static var onSurfaceDivider12: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(400)
        default: result = .black(400)
        }
        return result
    }
    
    /// dark: white300
    /// light: black300
    public static var onSurfaceDivider5: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(300)
        default: result = .black(300)
        }
        return result
    }
    
    /// dark: black00, 0.88
    /// light: black, 0.88
    public static var scrim: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .black(100).withAlphaComponent(0.88)
        default: result = .black.withAlphaComponent(0.88)
        }
        return result
    }
    
    /// dark: white
    /// light: black100
    public static var surface: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white
        default: result = black(100)
        }
        return result
    }
    
    /// dark: black50
    /// light: white50
    public static var surfaceHighEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .black(50)
        default: result = .white(50)
        }
        return result
    }
    @available(*, deprecated, message: "'onSurfaceHighEmphasis' was deprecated in 2.0.0: Use surfaceHighEmphasis instead")
    public static var onSurfaceHighEmphasis: UIColor {
        return surfaceHighEmphasis
    }
    
    /// dark: black700
    /// light: white900
    
    public static var surfaceMediumEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .black(700)
        default: result = .white(900)
        }
        return result
    }
    
    @available(*, deprecated, message: "'onSurfaceMediumEmphasis' was deprecated in 2.0.0: Use surfaceMediumEmphasis instead")
    public static var onSurfaceMediumEmphasis: UIColor {
        return surfaceMediumEmphasis
    }
    
    /// dark: black900
    /// light: white600
    public static var surfaceLowEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .black(900)
        default: result = .white(600)
        }
        return result
    }
    
    /// dark: white600
    /// light: black500
    public static var surfaceDefault: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(600)
        default: result = .black(500)
        }
        return result
    }

    @available(*, deprecated, message: "'onSurfaceDefault' was deprecated in 2.0.0: Use surfaceDefault instead")
    public static var onSurfaceDefault: UIColor {
        return surfaceDefault
    }
    
    /// dark: white500
    /// light: black300
    public static var surfaceDisabled: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(600)
        default: result = .black(500)
        }
        return result
    }

    @available(*, deprecated, message: "'onSurfaceDisabled' was deprecated in 2.0.0: Use surfaceDisabled instead")
    public static var onSurfaceDisabled: UIColor {
        return surfaceDisabled
    }
    
    /// #F50F3B
    public static var primary: UIColor {
        return UIColor(hexString: "#F50F3B")
    }
    
    /// #C10020
    public static var primaryVariant: UIColor {
        return UIColor(hexString: "#C10020")
    }
    
    /// #FFFFFF
    public static var onPrimary: UIColor {
        return UIColor(hexString: "#FFFFFF")
    }
    
    // TODO: gradient 방향 고려 필요
    /// #F50026, #FA005C, #FF9800
    public static var premiumCTA: [UIColor] {
        return [UIColor(hexString: "#F50026"), UIColor(hexString: "#FA005C"), UIColor(hexString: "#FF9800")]
    }
    
    /// #FA005C, #FF9800
    public static var premiumHorizon: [UIColor] {
        return [UIColor(hexString: "#FA005C"), UIColor(hexString: "#FF9800")]
    }
    
    /// #FA005C, #FF9800
    public static var premiumVertical: [UIColor] {
        return [UIColor(hexString: "#FA005C"), UIColor(hexString: "#FF9800")]
    }
    
    /// #00A3C7
    public static var secondary: UIColor {
        return UIColor(hexString: "#00A3C7")
    }
    
    /// #009299
    public static var secondaryVariant: UIColor {
        return UIColor(hexString: "#009299")
    }
    
    /// #FEFEFE
    public static var onSecondary: UIColor {
        return UIColor(hexString: "#FEFEFE")
    }
    
    /// #FFDA15
    public static var color1: UIColor {
        return UIColor(hexString: "#FFDA15")
    }
    
    /// #FF9800
    public static var color2: UIColor {
        return UIColor(hexString: "#FF9800")
    }
    
    /// #FA005C
    public static var color3: UIColor {
        return UIColor(hexString: "#FA005C")
    }
    
    /// #FF5D00
    public static var negative: UIColor {
        return UIColor(hexString: "#FF5D00")
    }
    
    /// #22BB3C
    public static var positive: UIColor {
        return UIColor(hexString: "#22BB3C")
    }
    
    /// #E2B00A
    public static var caution: UIColor {
        return UIColor(hexString: "#E2B00A")
    }
}

@available(*, deprecated, message: "Use .ALColor.\"color name\" instead")
public enum ALColor {
    case background
    case appBar
    case scrim
    case onSurfaceDisabled
    case onSurfaceDivider12
    case onSurfaceDivider5
    case surface
    case onSurfaceHighEmphasis
    case black600
    case onSurfaceMediumEmphasis
    case onSurfaceDefault
    case black1300
    case black400
}

@available(*, deprecated, message: "Use .ALColor.\"color name\" instead")
extension ALColor {
    public var color: UIColor {
        let result: UIColor
        switch self {
        case .background: result = UIColor(hexString: "#F5F9FF")
        case .appBar: result = UIColor(hexString: "#E8F1FF")
        case .scrim: result = UIColor(hexString: "#30435F")
        case .onSurfaceDisabled: result = UIColor(hexString: "#BDCFED")
        case .onSurfaceDivider12: result = UIColor(hexString: "#D2E4FF")
        case .onSurfaceDivider5: result = UIColor(hexString: "#E8F1FF")
        case .surface: result = UIColor(hexString: "#FFFFFF")
        case .onSurfaceHighEmphasis: result = UIColor(hexString: "#1F252E")
        case .black600: result = UIColor(hexString: "#4E617D")
        case .onSurfaceMediumEmphasis: result = UIColor(hexString: "#7689A5")
        case .onSurfaceDefault: result = UIColor(hexString: "#A9BBD9")
        case .black1300: result = UIColor(hexString: "#FAFCFF")
        case .black400: result = UIColor(hexString: "#122541")
        }
        return result
    }
}


extension UIColor {
    convenience init(hexString: String) {
        let hexString = hexString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            if #available(iOS 13.0, *) {
                scanner.currentIndex = scanner.string.index(after: scanner.currentIndex)
            } else {
                scanner.scanLocation = 1
            }
        }
        
        var color:UInt64 = 0
        scanner.scanHexInt64(&color)

        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask

        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0

        self.init(red:red, green:green, blue:blue, alpha:1)
    }
}
