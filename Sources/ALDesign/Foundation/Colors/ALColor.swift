//
//  ALColor.swift
//  
//
//  Created by smis on 2021/07/05.
//

import UIKit

//enum ALColor {
//    case white50
//    //..
//
//    var value: UIColor {
//        return UIColor.white
//    }
//}
//
//extension UIColor {
//    public static var white50: UIColor {
//
//    }
//}

extension UIColor {
    // 피드백, enum이나 static 변경 고려
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
        default: result = UIColor(hexString: "#F2F6FF")
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
        default: result = UIColor(hexString: "#0B0C0F")
        }
        return result
    }

    /// dark: black50
    /// light: white100
    public static var background: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(100)
        default: result = .black(50)
        }
        return result
    }
    
    /// dark: black300
    /// light: white200
    public static var appbar: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(200)
        default: result = .black(300)
        }
        return result
    }
    
    /// dark: black400
    /// light: white400
    public static var onSurfaceDivider12: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(400)
        default: result = .black(400)
        }
        return result
    }
    
    /// dark: black300
    /// light: white300
    public static var onSurfaceDivider5: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(300)
        default: result = .black(300)
        }
        return result
    }
    
    /// dark: black, 0.88
    /// light: black00, 0.88
    public static var scrim: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .black(100).withAlphaComponent(0.88)
        default: result = .black.withAlphaComponent(0.88)
        }
        return result
    }
    
    /// dark: black100
    /// light: white
    public static var surface: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white
        default: result = black(100)
        }
        return result
    }
    
    /// dark: white50
    /// light: black50
    public static var surfaceHighEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .black(50)
        default: result = .white(50)
        }
        return result
    }
    
    /// dark: white900
    /// light: black700
    public static var surfaceMediumEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .black(700)
        default: result = .white(900)
        }
        return result
    }
    
    /// dark: white900
    /// light: black600
    public static var surfaceLowEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(900)
        default: result = .black(600)
        }
        return result
    }
    
    /// dark: black500
    /// light: white600
    public static var surfaceDefault: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(600)
        default: result = .black(500)
        }
        return result
    }
    
    /// dark: black300
    /// light: white500
    public static var surfaceDisabled: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = .white(500)
        default: result = .black(300)
        }
        return result
    }
    
    /// #F50F3B
    public static var primary: UIColor {
        return UIColor(hexString: "#F50F3B")
    }
    
    /// #990016
    public static var primaryVariant: UIColor {
        return UIColor(hexString: "#990016")
    }
    
    /// #00A3C7
    public static var secondary: UIColor {
        return UIColor(hexString: "#00A3C7")
    }
    
    /// #005967
    public static var secondaryVariant: UIColor {
        return UIColor(hexString: "#005967")
    }
    // TODO: gradient 방향 고려 필요
    /// #F60129, #FA015B, #FF8F06
    public static var premiumCTA: [UIColor] {
        return [UIColor(hexString: "#F60129"), UIColor(hexString: "#FA015B"), UIColor(hexString: "#FF8F06")]
    }
    
    /// #FA015B, #FF8F06
    public static var premiumHorizon: [UIColor] {
        return [UIColor(hexString: "#FA015B"), UIColor(hexString: "#FF8F06")]
    }
    
    /// #FA015B, #FF8F06
    public static var premiumVertical: [UIColor] {
        return [UIColor(hexString: "#FA015B"), UIColor(hexString: "#FF8F06")]
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
    
    /// #FFFFFF
    public static var onPrimary: UIColor {
        return UIColor(hexString: "#FFFFFF")
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
