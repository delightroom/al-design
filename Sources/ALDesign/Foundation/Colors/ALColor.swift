//
//  ALColor.swift
//  
//
//  Created by smis on 2021/07/05.
//

import UIKit

extension UIColor {
    public struct ALColor {
        /// dark: #0E1117
        /// light: #F5F9FF
        public static var background: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#0E1117")
                default: result = UIColor(hexString: "#F5F9FF")
                }
            } else {
                result = UIColor(hexString: "#F5F9FF")
            }
            return result
        }
        
        /// dark: #1A203B
        /// light: #E8F1FF
        public static var appbar: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#1A203B")
                default: result = UIColor(hexString: "#E8F1FF")
                }
            } else {
                result = UIColor(hexString: "#E8F1FF")
            }
            return result
        }
        
        /// dark: #0E1117, 0.8
        /// light: #30435F, 0.8
        public static var scrim: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#0E1117").withAlphaComponent(0.8)
                default: result = UIColor(hexString: "#30435F").withAlphaComponent(0.8)
                }
            } else {
                result = UIColor(hexString: "#30435F").withAlphaComponent(0.8)
            }
            return result
        }
        
        /// dark: #30435F
        /// light: #BDCFED
        public static var onSurfaceDisabled: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#30435F")
                default: result = UIColor(hexString: "#BDCFED")
                }
            } else {
                result = UIColor(hexString: "#BDCFED")
            }
            return result
        }
        
        /// dark: #171D2E
        /// light: #FFFFFF
        public static var surface: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#171D2E")
                default: result = UIColor(hexString: "#FFFFFF")
                }
            } else {
                result = UIColor(hexString: "#FFFFFF")
            }
            return result
        }
        
        /// dark: #F5F9FF
        /// light: #1F252E
        public static var onSurfaceHighEmphasis: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#F5F9FF")
                default: result = UIColor(hexString: "#1F252E")
                }
            } else {
                result = UIColor(hexString: "#1F252E")
            }
            return result
        }
        
        /// dark: #F5F9FF
        /// light: #7689A5
        public static var onSurfaceMediumEmphasis: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#F5F9FF")
                default: result = UIColor(hexString: "#7689A5")
                }
            } else {
                result = UIColor(hexString: "#7689A5")
            }
            return result
        }
        
        /// dark: #4E617D
        /// light: #A9BBD9
        public static var onSurfaceDefault: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#4E617D")
                default: result = UIColor(hexString: "#A9BBD9")
                }
            } else {
                result = UIColor(hexString: "#A9BBD9")
            }
            return result
        }
        
        /// dark: #30435F
        /// light: #D2E4FF
        public static var onSurfaceDivider12: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#30435F")
                default: result = UIColor(hexString: "#D2E4FF")
                }
            } else {
                result = UIColor(hexString: "#D2E4FF")
            }
            return result
        }
        
        /// dark: #30435F, 0.5
        /// light: #E8F1FF, 0.5
        public static var onSurfaceDivider5: UIColor {
            let result: UIColor
            if #available(iOS 13.0, *) {
                switch UITraitCollection.current.userInterfaceStyle {
                case .dark: result = UIColor(hexString: "#30435F").withAlphaComponent(0.5)
                default: result = UIColor(hexString: "#E8F1FF").withAlphaComponent(0.5)
                }
            } else {
                result = UIColor(hexString: "#E8F1FF").withAlphaComponent(0.5)
            }
            return result
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
