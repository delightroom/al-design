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
    var font: UIFont {
        let result: UIFont
        switch self {
        case .big: result = ButtonTypography.button1.font
        case .medium: result = ButtonTypography.button2.font
        case .small: result = ButtonTypography.button3.font
        case .tiny: result = ButtonTypography.button4.font
        }
        return result
    }
}

extension ALButtonSize {
    func attributedTitle(for title: String, style: ALButtonStyle, icon: UIImage?) -> NSMutableAttributedString {
        guard let icon = icon else { return attributedTitle(for: title, style: style) }
        let result: NSMutableAttributedString
        
        result = NSMutableAttributedString()
        let attatchment = NSTextAttachment()
        attatchment.image = icon
        let attachmentBoundsY = (self.font.capHeight - icon.size.height) / 2
        attatchment.bounds = CGRect(origin: CGPoint(x: 0, y: attachmentBoundsY), size: icon.size)
        
        switch style {
        case .lineIconLeft:
            result.append(NSAttributedString(attachment: attatchment))
            result.append(attributedTitle(for: " \(title)", style: style))
        case .lineIconRight:
            result.append(attributedTitle(for: "\(title) ", style: style))
            result.append(NSAttributedString(attachment: attatchment))
        case .underline:
            result.append(attributedTitle(for: "\(title) ", style: style))
            result.append(NSAttributedString(attachment: attatchment))
        default:
            result.append(attributedTitle(for: title, style: style))
        }
        return result.addColor(style.textColor)
    }
    
    func attributedTitle(for title: String, style: ALButtonStyle) -> NSMutableAttributedString {
        let result: NSMutableAttributedString
        switch self {
        case .big: result = title.button(.button1)
        case .medium: result = title.button(.button2)
        case .small: result = title.button(.button3)
        case .tiny: result = title.button(.button4)
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
        case .big: result = UIEdgeInsets(top: 22, left: 56, bottom: 22, right: 56)
        case .medium: result = UIEdgeInsets(top: 14, left: 32, bottom: 14, right: 32)
        case .small:
            switch style {
            case .lineIconLeft: result = UIEdgeInsets(top: 10, left: 8, bottom: 10, right: 16)
            case .lineIconRight: result = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 8)
            case .underline: result = UIEdgeInsets(top: 8, left: 0, bottom: 4, right: 0)
            default: result = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
            }
        case .tiny:
            switch style {
            case .lineIconLeft: result = UIEdgeInsets(top: 6, left: 8, bottom: 6, right: 12)
            case .lineIconRight: result = UIEdgeInsets(top: 6, left: 12, bottom: 6, right: 8)
            case .underline: result = UIEdgeInsets(top: 3, left: 0, bottom: 6, right: 0)
            default: result = UIEdgeInsets(top: 6, left: 12, bottom: 6, right: 12)
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
