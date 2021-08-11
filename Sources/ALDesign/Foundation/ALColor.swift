//
//  ALColor.swift
//  
//
//  Created by smis on 2021/07/05.
//

import UIKit

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
