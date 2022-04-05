//
//  Typography_deprecated.swift
//  
//
//  Created by smis on 2021/12/08.
//

import UIKit

extension Typography {
    var font: UIFont {
        let result: UIFont
        switch self {
        case .hero1: result = UIFont.systemFont(ofSize: 110, weight: .heavy)
        case .hero2: result = UIFont.systemFont(ofSize: 48, weight: .heavy)
        case .title1: result = UIFont.systemFont(ofSize: 32, weight: .heavy)
        case .title2: result = UIFont.systemFont(ofSize: 26, weight: .heavy)
        case .title3: result = UIFont.systemFont(ofSize: 20, weight: .heavy)
        case .subtitle: result = UIFont.systemFont(ofSize: 18)
        case .button: result = UIFont.systemFont(ofSize: 17, weight: .heavy)
        case .paragraph: result = UIFont.systemFont(ofSize: 16)
        case .overline: result = UIFont.systemFont(ofSize: 14, weight: .heavy)
        case .caption1: result = UIFont.systemFont(ofSize: 14)
        case .caption2: result = UIFont.systemFont(ofSize: 12, weight: .heavy)
        case .caption3: result = UIFont.systemFont(ofSize: 12)
        }
        return result
    }
}

extension String {
    private func attributedString(type: Typography) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [.font: type.font, .foregroundColor: UIColor.onSurfaceHighEmphasisv1]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
    
    public var hero: NSMutableAttributedString {
        return attributedString(type: .hero1)
    }
    
    public var title: NSMutableAttributedString {
        return attributedString(type: .title1)
    }
    
    public var subtitle: NSMutableAttributedString {
        return attributedString(type: .subtitle)
    }
    
    public var button: NSMutableAttributedString {
        return attributedString(type: .button)
    }
    
    public var paragraph: NSMutableAttributedString {
        return attributedString(type: .paragraph)
    }
    
    public var overline: NSMutableAttributedString {
        return attributedString(type: .overline)
    }
    
    public var caption: NSMutableAttributedString {
        return attributedString(type: .caption1)
    }
}

extension NSMutableAttributedString {
    public var two: NSMutableAttributedString {
        guard let font = self.attribute(.font, at: 0, effectiveRange: nil) as? UIFont else { return self }
        let result = self
        let value: UIFont
        switch font {
        case Typography.hero1.font: value = Typography.hero2.font
        case Typography.title1.font: value = Typography.title2.font
        case Typography.caption1.font: value = Typography.caption2.font
        default: return self
        }
        let range = NSRange(location: 0, length: self.length)
        result.removeAttribute(.font, range: range)
        result.addAttribute(.font, value: value, range: range)
        return result
    }
    
    public var three: NSMutableAttributedString {
        guard let font = self.attribute(.font, at: 0, effectiveRange: nil) as? UIFont else { return self }
        let result = self
        let value: UIFont
        switch font {
        case Typography.title1.font: value = Typography.title3.font
        case Typography.caption1.font: value = Typography.caption3.font
        default: return self
        }
        let range = NSRange(location: 0, length: self.length)
        result.removeAttribute(.font, range: range)
        result.addAttribute(.font, value: value, range: range)
        return result
    }
    
    public func addColor(_ color: ALColor) -> NSMutableAttributedString {
        let result = self
        let range = NSRange(location: 0, length: self.length)
        if attribute(.foregroundColor, at: 0, effectiveRange: nil) != nil {
            removeAttribute(.foregroundColor, range: range)
        }
        result.addAttribute(.foregroundColor, value: color.color, range: range)
        return result
    }
}

extension String {
    @available(*, deprecated, message: "Use chaining instead")
    public func attributedString(type: Typography, alignment: NSTextAlignment = .left, color: ALColor = .onSurfaceHighEmphasis) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        let attributes: [NSAttributedString.Key: Any] = [.font: type.font, .foregroundColor: color.color, .paragraphStyle: paragraphStyle]
        return NSAttributedString(string: self, attributes: attributes)
    }
}
