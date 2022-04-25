//
//  ALButtonType.swift
//  
//
//  Created by smis on 2022/01/13.
//

import Foundation
import UIKit

enum ALButtonSize {
    case big
    case medium
    case small
    case tiny
}

extension ALButtonSize {
    func attributedTitle(for title: String, style: ALButtonStyle) -> NSMutableAttributedString {
        let result: NSMutableAttributedString
        switch self {
        case .big: result = title.text(.title3)
        case .medium: result = title.text(.button)
        case .small:
            switch style {
            case .lineIconLeft:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = SolidIcon.play1616
                attatchment.bounds = CGRect(origin: CGPoint(x: 0, y: -1.5), size: SolidIcon.play1616.size)
                result.append(NSAttributedString(attachment: attatchment))
                result.append(" \(title)".text(.overline))
            case .lineIconRight:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = SolidIcon.play1616
                attatchment.bounds = CGRect(origin: CGPoint(x: 0, y: -1.5), size: SolidIcon.play1616.size)
                result.append("\(title) ".text(.overline))
                result.append(NSAttributedString(attachment: attatchment))
            case .underline:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = LineIcon.forward1616
                attatchment.bounds = CGRect(origin: CGPoint(x: 0, y: -1.5), size: LineIcon.forward1616.size)
                result.append("\(title) ".text(.overline))
                result.append(NSAttributedString(attachment: attatchment))
            default:
                result = title.text(.overline)
            }
        case .tiny:
            switch style {
            case .lineIconLeft:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = SolidIcon.play1616
                attatchment.bounds = CGRect(origin: CGPoint(x: 0, y: -1.5), size: SolidIcon.play1616.size)
                result.append(NSAttributedString(attachment: attatchment))
                result.append(" \(title)".text(.caption1))
            case .lineIconRight:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = SolidIcon.play1616
                attatchment.bounds = CGRect(origin: CGPoint(x: 0, y: -1.5), size: SolidIcon.play1616.size)
                result.append("\(title) ".text(.caption1))
                result.append(NSAttributedString(attachment: attatchment))
            case .underline:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = LineIcon.forward1616
                attatchment.bounds = CGRect(origin: CGPoint(x: 0, y: -1.5), size: LineIcon.forward1616.size)
                result.append("\(title) ".text(.caption1))
                result.append(NSAttributedString(attachment: attatchment))
            default:
                result = title.text(.caption1)
            }
        }
        return result.addColor(style.textColor)
    }
    
    var cornerRadius: CGFloat {
        let result: CGFloat
        switch self {
        case .big, .medium: result = 6
        case .small, .tiny: result = 4
        }
        return result
    }
    
    func contentEdgeInsets(for style: ALButtonStyle) -> UIEdgeInsets {
        let result: UIEdgeInsets
        switch self {
        case .big: result = UIEdgeInsets(top: 22, left: 56, bottom: 20, right: 56)
        case .medium: result = UIEdgeInsets(top: 14, left: 32, bottom: 12, right: 32)
        case .small:
            switch style {
            case .lineIconLeft: result = UIEdgeInsets(top: 10, left: 12, bottom: 8, right: 16)
            case .lineIconRight: result = UIEdgeInsets(top: 10, left: 16, bottom: 8, right: 12)
            case .underline: result = UIEdgeInsets(top: 8, left: 0, bottom: 2, right: 0)
            default: result = UIEdgeInsets(top: 10, left: 16, bottom: 8, right: 16)
            }
        case .tiny:
            switch style {
            case .lineIconLeft: result = UIEdgeInsets(top: 6, left: 8, bottom: 4, right: 12)
            case .lineIconRight: result = UIEdgeInsets(top: 6, left: 12, bottom: 4, right: 8)
            case .underline: result = UIEdgeInsets(top: 3, left: 0, bottom: 4, right: 0)
            default: result = UIEdgeInsets(top: 6, left: 12, bottom: 4, right: 12)
            }
        }
        return result
    }
}

enum ALButtonStyle {
    case gradient
    case primary
    case affordance
    case basic
    case line
    case lineIconLeft
    case lineIconRight
    case underline
}

extension ALButtonStyle {
    var textColor: UIColor {
        let result: UIColor
        switch self {
        case .gradient, .primary: result = .onPrimary
        case .affordance: result = .appbar
        case .basic: result = .surfaceHighEmphasis
        case .line, .lineIconLeft, .lineIconRight, .underline: result = .surfaceMediumEmphasis
        }
        return result
    }
    
    var backgroundColors: [UIColor]? {
        let result: [UIColor]?
        switch self {
        case .gradient: result = UIColor.premiumHorizon
        case .primary: result = [.primary]
        case .affordance: result = [.priority]
        case .basic: result = [.surfaceDefault]
        case .line, .lineIconLeft, .lineIconRight, .underline: result = nil
        }
        return result
    }
    
    var borderColor: UIColor? {
        let result: UIColor?
        switch self {
        case .gradient, .primary, .affordance, .basic: result = nil
        case .line, .lineIconLeft, .lineIconRight, .underline: result = .surfaceMediumEmphasis
        }
        return result
    }
    
    var disabledTextColor: UIColor {
        let result: UIColor
        switch self {
        case .gradient, .primary: result = .scrim
        case .affordance, .basic, .line, .lineIconLeft, .lineIconRight, .underline: result = .surfaceLowEmphasis
        }
        return result.withAlphaComponent(0.4)
    }
    
    var disabledBackgroundColors: [UIColor]? {
        let result: [UIColor]?
        switch self {
        case .gradient: result = UIColor.premiumHorizon
        case .primary: result = [.primary]
        case .affordance, .basic: result = [.surfaceDefault]
        case .line, .lineIconLeft, .lineIconRight, .underline: result = nil
        }
        return result
    }
}
