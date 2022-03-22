//
//  ALColor_deprecated.swift
//  
//
//  Created by 이옥민 on 2022/03/22.
//

import Foundation
import UIKit

extension UIColor {
    @available(*, deprecated, message: "'onSurfaceHighEmphasis' was deprecated in 2.0.0: Use surfaceHighEmphasis instead")
    public static var onSurfaceHighEmphasis: UIColor {
        return surfaceHighEmphasis
    }
    
    @available(*, deprecated, message: "'onSurfaceMediumEmphasis' was deprecated in 2.0.0: Use surfaceMediumEmphasis instead")
    public static var onSurfaceMediumEmphasis: UIColor {
        return surfaceMediumEmphasis
    }
    
    @available(*, deprecated, message: "'onSurfaceDefault' was deprecated in 2.0.0: Use surfaceDefault instead")
    public static var onSurfaceDefault: UIColor {
        return surfaceDefault
    }
    
    @available(*, deprecated, message: "'onSurfaceDisabled' was deprecated in 2.0.0: Use surfaceDisabled instead")
    public static var onSurfaceDisabled: UIColor {
        return surfaceDisabled
    }
    
    /// dark: #0E1117
    /// light: #F5F9FF
    public static var backgroundv1: UIColor {
        return UIColor(hexString: "#F5F9FF")
    }
    
    /// dark: #1A203B
    /// light: #E8F1FF
    public static var appbarv1: UIColor {
        return UIColor(hexString: "#E8F1FF")
    }
    
    /// dark: #0E1117, 0.8
    /// light: #30435F, 0.8
    public static var scrimv1: UIColor {
        return UIColor(hexString: "#30435F").withAlphaComponent(0.8)
    }
    
    /// dark: #30435F
    /// light: #BDCFED
    public static var onSurfaceDisabledv1: UIColor {
        return UIColor(hexString: "#BDCFED")
    }
    
    /// dark: #171D2E
    /// light: #FFFFFF
    public static var surfacev1: UIColor {
        return UIColor(hexString: "#FFFFFF")
    }
    
    /// dark: #F5F9FF
    /// light: #1F252E
    public static var onSurfaceHighEmphasisv1: UIColor {
        return UIColor(hexString: "#1F252E")
    }
    
    /// dark: #7689A5
    /// light: #7689A5
    public static var onSurfaceMediumEmphasisv1: UIColor {
        return UIColor(hexString: "#7689A5")
    }
    
    /// dark: #4E617D
    /// light: #A9BBD9
    public static var onSurfaceDefaultv1: UIColor {
        return UIColor(hexString: "#A9BBD9")
    }
    
    /// dark: #30435F
    /// light: #D2E4FF
    public static var onSurfaceDivider12v1: UIColor {
        return UIColor(hexString: "#D2E4FF")
    }
    
    /// dark: #30435F, 0.5
    /// light: #E8F1FF, 0.5
    public static var onSurfaceDivider5v1: UIColor {
        return UIColor(hexString: "#E8F1FF").withAlphaComponent(0.5)
    }
    
    /// #F50F3B
    public static var primaryv1: UIColor {
        return UIColor(hexString: "#F50F3B")
    }
    
    /// #C10020
    public static var primaryVariantv1: UIColor {
        return UIColor(hexString: "#C10020")
    }
    
    /// #FFFFFF
    public static var onPrimaryv1: UIColor {
        return UIColor(hexString: "#FFFFFF")
    }
    
    /// #FEFEFE
    @available(*, deprecated, message: "'onSecondary' was deprecated in 2.0.0")
    public static var onSecondary: UIColor {
        return UIColor(hexString: "#FEFEFE")
    }
    
    /// #00A3C7
    public static var secondaryv1: UIColor {
        return UIColor(hexString: "#00A3C7")
    }
    
    /// #009299
    public static var secondaryVariantv1: UIColor {
        return UIColor(hexString: "#009299")
    }
    
    /// #FEFEFE
    public static var onSecondaryv1: UIColor {
        return UIColor(hexString: "#FEFEFE")
    }
    
    public static var color1v1: UIColor {
        return UIColor(hexString: "#FFDA15")
    }
    
    public static var color2v1: UIColor {
        return UIColor(hexString: "#FF9800")
    }
    
    public static var color3v1: UIColor {
        return UIColor(hexString: "#FA005C")
    }
    
    /// #FF5D00
    public static var negativev1: UIColor {
        return UIColor(hexString: "#FF5D00")
    }
    
    /// #22BB3C
    public static var positivev1: UIColor {
        return UIColor(hexString: "#22BB3C")
    }
    
    /// #E2B00A
    public static var cautionv1: UIColor {
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
