//
//  ALButtonType.swift
//  
//
//  Created by smis on 2022/01/13.
//

import Foundation
import UIKit

public enum ALButtonType {
    case big
    case mediumGradient
    case mediumPrimary
    case mediumBasic
    case mediumLine
    case smallGradient
    case smallPrimary
    case smallBasic
    case smallLine
    case smallLineRightArrow
    case smallLineLeftArrow
    case smallUnderline
    case tinyGradient
    case tinyPrimary
    case tinyBasic
    case tinyLine
    case tinyLineRightArrow
    case tinyLineLeftArrow
    case tinyUnderline
}

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
                result.append("\(title) ".text(.overline))
                result.append(NSAttributedString(attachment: attatchment))
            case .lineIconRight:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = SolidIcon.play1616
                result.append(NSAttributedString(attachment: attatchment))
                result.append(" \(title)".text(.overline))
            case .underline:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = LineIcon.forward1616
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
                result.append("\(title) ".text(.caption1))
                result.append(NSAttributedString(attachment: attatchment))
            case .lineIconRight:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = SolidIcon.play1616
                result.append(NSAttributedString(attachment: attatchment))
                result.append(" \(title)".text(.caption1))
            case .underline:
                result = NSMutableAttributedString()
                let attatchment = NSTextAttachment()
                attatchment.image = LineIcon.forward1616
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
    
    var contentEdgeInsets: UIEdgeInsets {
        let result: UIEdgeInsets
        switch self {
        case .big: result = UIEdgeInsets(top: 22, left: 56, bottom: 22, right: 56)
        case .medium: result = UIEdgeInsets(top: 14, left: 32, bottom: 14, right: 32)
        case .small: result = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        case .tiny: result = UIEdgeInsets(top: 6, left: 12, bottom: 6, right: 12)
        }
        return result
    }
}

enum ALButtonStyle {
    case gradient
    case primary
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
        case .basic: result = .surfaceHighEmphasis
        case .line, .lineIconLeft, .lineIconRight, .underline: result = .surfaceMediumEmphasis
        }
        return result
    }
    
    var backgroundColor: UIColor {
        let result: UIColor
        switch self {
        case .gradient: result = .premiumHorizon.first!
        case .primary: result = .onPrimary
        case .basic: result = .surfaceDefault
        case .line, .lineIconLeft, .lineIconRight, .underline: result = .clear
        }
        return result
    }
    
    var borderColor: CGColor? {
        let result: CGColor?
        switch self {
        case .gradient, .primary, .basic: result = nil
        case .line, .lineIconLeft, .lineIconRight, .underline: result = UIColor.surfaceMediumEmphasis.cgColor
        }
        return result
    }
    
    var disabledColor: UIColor {
        let result: UIColor
        switch self {
        case .gradient, .primary: result = .primaryVariant
        case .basic: result = UIColor(hexString: "#2F333D")
        case .line, .lineIconLeft, .lineIconRight, .underline: result = .surfaceDefault
        }
        return result
    }
}

extension ALButtonType {
    public func attributedTitle(for title: String) -> NSMutableAttributedString {
        let result: NSMutableAttributedString
        switch self {
        case .big: result = title.text(.title3).addColor(.onPrimary)
        case .mediumGradient, .mediumPrimary: result = title.text(.button).addColor(.onPrimary)
        case .mediumBasic: result = title.text(.button).addColor(.surfaceHighEmphasis)
        case .mediumLine: result = title.text(.button).addColor(.surfaceMediumEmphasis)
        case .smallGradient, .smallPrimary: result = title.text(.overline).addColor(.onPrimary)
        case .smallBasic: result = title.text(.overline).addColor(.surfaceHighEmphasis)
        case .smallLine: result = title.text(.overline).addColor(.surfaceMediumEmphasis)
        case .smallLineRightArrow:
            result = NSMutableAttributedString()
            let attatchment = NSTextAttachment()
            attatchment.image = SolidIcon.play1616
            result.append("\(title) ".text(.overline).addColor(.surfaceMediumEmphasis))
            result.append(NSAttributedString(attachment: attatchment))
        case .smallLineLeftArrow:
            result = NSMutableAttributedString()
            let attatchment = NSTextAttachment()
            attatchment.image = SolidIcon.play1616
            result.append(NSAttributedString(attachment: attatchment))
            result.append(" \(title)".text(.overline).addColor(.surfaceMediumEmphasis))
        case .smallUnderline:
            result = NSMutableAttributedString()
            let attatchment = NSTextAttachment()
            attatchment.image = LineIcon.forward1616
            result.append("\(title) ".text(.overline).addColor(.surfaceMediumEmphasis))
            result.append(NSAttributedString(attachment: attatchment))
        case .tinyGradient, .tinyPrimary: result = title.text(.caption1).addColor(.onPrimary)
        case .tinyBasic: result = title.text(.caption1).addColor(.surfaceHighEmphasis)
        case .tinyLine: result = title.text(.caption1).addColor(.surfaceMediumEmphasis)
        case .tinyLineRightArrow:
            result = NSMutableAttributedString()
            let attatchment = NSTextAttachment()
            attatchment.image = SolidIcon.play1616
            result.append("\(title) ".text(.caption1).addColor(.surfaceMediumEmphasis))
            result.append(NSAttributedString(attachment: attatchment))
        case .tinyLineLeftArrow:
            result = NSMutableAttributedString()
            let attatchment = NSTextAttachment()
            attatchment.image = SolidIcon.play1616
            result.append(NSAttributedString(attachment: attatchment))
            result.append(" \(title)".text(.caption1).addColor(.surfaceMediumEmphasis))
        case .tinyUnderline:
            result = NSMutableAttributedString()
            let attatchment = NSTextAttachment()
            attatchment.image = SolidIcon.play1616
            result.append("\(title) ".text(.caption1).addColor(.surfaceMediumEmphasis))
            result.append(NSAttributedString(attachment: attatchment))
        }
        return result
    }
    
    var cornerRadius: CGFloat {
        let result: CGFloat
        switch self {
        case .big, .mediumGradient, .mediumPrimary, .mediumBasic, .mediumLine, .smallGradient: result = 6
        case .smallPrimary, .smallBasic, .smallLine, .smallLineRightArrow, .smallLineLeftArrow, .smallUnderline, .tinyGradient, .tinyPrimary, .tinyBasic, .tinyLine, .tinyLineRightArrow, .tinyLineLeftArrow, .tinyUnderline: result = 4
        }
        return result
    }
}
