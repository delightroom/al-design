//
//  ALColor.swift
//  
//
//  Created by smis on 2021/07/05.
//

import UIKit

extension UIColor {
    /// light: white100
    /// dark: black50
    public static var background: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white100.value
        default: result = ALColorPalette.black50.value
        }
        return result
    }
    
    /// light: white200
    /// dark: black300
    public static var appbar: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white200.value
        default: result = ALColorPalette.black300.value
        }
        return result
    }
    
    /// light: white400
    /// dark: black400
    public static var onSurfaceDivider12: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white400.value
        default: result = ALColorPalette.black400.value
        }
        return result
    }
    
    /// light: white300
    /// dark: black300
    public static var onSurfaceDivider5: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white300.value
        default: result = ALColorPalette.black300.value
        }
        return result
    }
    
    /// light: black100, 0.88
    /// dark: black, 0.88
    public static var scrim: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.black100.value.withAlphaComponent(0.88)
        default: result = .black.withAlphaComponent(0.88)
        }
        return result
    }
    
    /// light: white
    /// dark: black100
    public static var surface: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white.value
        default: result = ALColorPalette.black100.value
        }
        return result
    }
    
    /// light: black50
    /// dark: white50
    public static var surfaceHighEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.black50.value
        default: result = ALColorPalette.white50.value
        }
        return result
    }
    
    /// light: black700
    /// dark: white900
    public static var surfaceMediumEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.black700.value
        default: result = ALColorPalette.white900.value
        }
        return result
    }
    
    /// light: black600
    /// dark: white900
    public static var surfaceLowEmphasis: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white900.value
        default: result = ALColorPalette.black600.value
        }
        return result
    }
    
    /// light: white600
    /// dark: black500
    public static var surfaceDefault: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white600.value
        default: result = ALColorPalette.black500.value
        }
        return result
    }
    
    /// light: white500
    /// dark: black300
    public static var surfaceDisabled: UIColor {
        let result: UIColor
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = ALColorPalette.white500.value
        default: result = ALColorPalette.black300.value
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
