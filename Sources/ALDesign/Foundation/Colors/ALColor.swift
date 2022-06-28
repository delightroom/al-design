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
        UIColor.dynamicColor(lightMode: ALColorPalette.white100,
                             darkMode: ALColorPalette.black50)
    }
    
    /// light: white200
    /// dark: black300
    public static var appbar: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white200,
                             darkMode: ALColorPalette.black300)
    }
    
    /// light: white400
    /// dark: black400
    public static var onSurfaceDivider12: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white400,
                             darkMode: ALColorPalette.black400)
    }
    
    /// light: white300
    /// dark: black300
    public static var onSurfaceDivider5: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white300,
                             darkMode: ALColorPalette.black300)
    }
    
    /// light: black100, 0.88
    /// dark: black, 0.88
    public static var scrim: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.black100.value.withAlphaComponent(0.88),
                             darkMode: ALColorPalette.black.value.withAlphaComponent(0.88))
    }
    
    /// light: white
    /// dark: black100
    public static var surface: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white,
                             darkMode: ALColorPalette.black100)
    }
    
    /// light: black50
    /// dark: white50
    public static var surfaceHighEmphasis: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.black50,
                             darkMode: ALColorPalette.white50)
    }
    
    /// light: black700
    /// dark: white900
    public static var surfaceMediumEmphasis: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.black700,
                             darkMode: ALColorPalette.white900)
    }
    
    /// light: white900
    /// dark: black600
    public static var surfaceLowEmphasis: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white900,
                             darkMode: ALColorPalette.black600)
    }
    
    /// light: white600
    /// dark: black500
    public static var surfaceDefault: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white600,
                             darkMode: ALColorPalette.black500)
    }
    
    /// light: white500
    /// dark: black300
    public static var surfaceDisabled: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white500,
                             darkMode: ALColorPalette.black300)
    }
    /// light: black200
    /// dark: white600
    public static var priority: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.black200,
                             darkMode: ALColorPalette.white600)
    }
    
    /// colorGray
    public static var gray50: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white50,
                             darkMode: ALColorPalette.black50)
    }
    public static var gray100: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white100,
                             darkMode: ALColorPalette.black100)
    }
    public static var gray200: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white200,
                             darkMode: ALColorPalette.black200)
    }
    public static var gray300: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white300,
                             darkMode: ALColorPalette.black300)
    }
    public static var gray400: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white400,
                             darkMode: ALColorPalette.black400)
    }
    public static var gray500: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white500,
                             darkMode: ALColorPalette.black500)
    }
    public static var gray600: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white600,
                             darkMode: ALColorPalette.black600)
    }
    public static var gray700: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white700,
                             darkMode: ALColorPalette.black700)
    }
    public static var gray800: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white800,
                             darkMode: ALColorPalette.black800)
    }
    public static var gray900: UIColor {
        UIColor.dynamicColor(lightMode: ALColorPalette.white900,
                             darkMode: ALColorPalette.black900)
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
    
    class func dynamicColor(lightMode: UIColor, darkMode: UIColor) -> UIColor {
        UIColor { (taitCollection: UITraitCollection) -> UIColor in
            switch taitCollection.userInterfaceStyle {
            case .dark:         return darkMode
            case .light:        return lightMode
            case .unspecified:  return lightMode
            @unknown default:   return lightMode
            }
        }
    }
    
    class func dynamicColor(lightMode: ALColorPalette, darkMode: ALColorPalette) -> UIColor {
        UIColor { (taitCollection: UITraitCollection) -> UIColor in
            switch taitCollection.userInterfaceStyle {
            case .dark:         return darkMode.value
            case .light:        return lightMode.value
            case .unspecified:  return lightMode.value
            @unknown default:   return lightMode.value
            }
        }
    }
}
