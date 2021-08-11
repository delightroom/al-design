//
//  File.swift
//  
//
//  Created by smis on 2021/08/11.
//

import UIKit

public enum Colors {
    case dark
    case light
}

extension Colors {
    /// dark: #0E1117
    /// light: #F5F9FF
    var background: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#0E1117")
        case .light: result = UIColor(hexString: "#F5F9FF")
        }
        return result
    }
    
    /// dark: #1A203B
    /// light: #E8F1FF
    var appbar: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#1A203B")
        case .light: result = UIColor(hexString: "#E8F1FF")
        }
        return result
    }
    
    /// dark: #0E1117, 0.8
    /// light: #30435F, 0.8
    var scrim: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#0E1117").withAlphaComponent(0.8)
        case .light: result = UIColor(hexString: "#30435F").withAlphaComponent(0.8)
        }
        return result
    }
    
    /// dark: #30435F
    /// light: #BDCFED
    var onSurfaceDisabled: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#30435F")
        case .light: result = UIColor(hexString: "#BDCFED")
        }
        return result
    }
    
    /// dark: #171D2E
    /// light: #FFFFFF
    var surface: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#171D2E")
        case .light: result = UIColor(hexString: "#FFFFFF")
        }
        return result
    }
    
    /// dark: #F5F9FF
    /// light: #1F252E
    var onSurfaceHighEmphasis: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#F5F9FF")
        case .light: result = UIColor(hexString: "#1F252E")
        }
        return result
    }
    
    /// dark: #F5F9FF
    /// light: #7689A5
    var onSurfaceMediumEmphasis: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#F5F9FF")
        case .light: result = UIColor(hexString: "#7689A5")
        }
        return result
    }
    
    /// dark: #4E617D
    /// light: #A9BBD9
    var onSurfaceDefault: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#4E617D")
        case .light: result = UIColor(hexString: "#A9BBD9")
        }
        return result
    }
    
    /// dark: #30435F
    /// light: #D2E4FF
    var onSurfaceDivider12: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#30435F")
        case .light: result = UIColor(hexString: "#D2E4FF")
        }
        return result
    }
    
    /// dark: #30435F, 0.5
    /// light: #E8F1FF, 0.5
    var onSurfaceDivider5: UIColor {
        let result: UIColor
        switch self {
        case .dark: result = UIColor(hexString: "#30435F").withAlphaComponent(0.5)
        case .light: result = UIColor(hexString: "#E8F1FF").withAlphaComponent(0.5)
        }
        return result
    }
}
