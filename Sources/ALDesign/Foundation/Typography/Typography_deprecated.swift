//
//  Typography_deprecated.swift
//  
//
//  Created by smis on 2021/12/08.
//

import UIKit

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
        return attributedString(type: .subtitle2)
    }
    
    public var button: NSMutableAttributedString {
        return attributedString(type: .subtitle1)
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

extension String {
    @available(*, deprecated, message: "Use \".font(_ typo: Typogrpahy).number()\" instead")
    public func number(_ typo: Typography) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [.font: typo.font, .foregroundColor: UIColor.surfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes).number()
    }
    
    @available(*, deprecated, message: "Use \".font(_ typo: Typogrpahy)\" instead")
    public func text(_ typo: Typography) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [.font: typo.font, .foregroundColor: UIColor.surfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
}
