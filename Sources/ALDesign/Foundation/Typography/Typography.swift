//
//  ALColor.swift
//
//
//  Created by smis on 2021/07/05.
//

import UIKit

public func lexendSemiBold(ofSize size: CGFloat) -> UIFont {
    let lexendFont = UIFont(name: "Lexend-SemiBold", size: size)
    let systemFont = UIFont.systemFont(ofSize: size, weight: .heavy)
    guard lexendFont == nil else { return lexendFont! }
    guard let fontUrl = Bundle.module.url(forResource: "Lexend-SemiBold", withExtension: "ttf"),
          let fontDataProvider = CGDataProvider(url: fontUrl as CFURL),
          let font = CGFont(fontDataProvider) else {
              return systemFont
          }
    var error: Unmanaged<CFError>?
    guard CTFontManagerRegisterGraphicsFont(font, &error) else {
        return systemFont
    }
    return UIFont(name: "Lexend-SemiBold", size: size)!
}

public enum Typography {
    case hero1
    case hero2
    case title1
    case title2
    case title3
    case button
    case paragraph
    case overline
    case caption1
    case caption2
    case caption3
}

extension String {
    public func number(_ typo: Typography) -> NSAttributedString {
        let fontSize: CGFloat
        switch typo {
        case .hero1: fontSize = 110
        case .hero2: fontSize = 48
        case .title1: fontSize = 32
        case .title2: fontSize = 26
        case .title3: fontSize = 20
        default: fontSize = 20
        }
        let font: UIFont = lexendSemiBold(ofSize: fontSize)
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.onSurfaceHighEmphasis]
        return NSAttributedString(string: self, attributes: attributes)
    }
    
    public func text(_ typo: Typography) -> NSAttributedString {
        let lineHeight: CGFloat
        let font: UIFont
        switch typo {
        case .hero1:
            font = UIFont.systemFont(ofSize: 110, weight: .heavy)
            lineHeight = 110
        case .hero2:
            font = UIFont.systemFont(ofSize: 48, weight: .heavy)
            lineHeight = 62
        case .title1:
            font = UIFont.systemFont(ofSize: 32, weight: .heavy)
            lineHeight = 42
        case .title2:
            font = UIFont.systemFont(ofSize: 26, weight: .heavy)
            lineHeight = 34
        case .title3:
            font = UIFont.systemFont(ofSize: 20, weight: .heavy)
            lineHeight = 26
        case .button:
            font = UIFont.systemFont(ofSize: 17, weight: .heavy)
            lineHeight = 24
        case .paragraph:
            font = UIFont.systemFont(ofSize: 16)
            lineHeight = 22
        case .overline:
            font = UIFont.systemFont(ofSize: 14, weight: .heavy)
            lineHeight = 20
        case .caption1:
            font = UIFont.systemFont(ofSize: 14)
            lineHeight = 20
        case .caption2:
            font = UIFont.systemFont(ofSize: 12, weight: .heavy)
            lineHeight = 18
        case .caption3:
            font = UIFont.systemFont(ofSize: 12)
            lineHeight = 18
        }
        let style = NSMutableParagraphStyle()
        style.maximumLineHeight = lineHeight
        style.minimumLineHeight = lineHeight
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.onSurfaceHighEmphasis, .paragraphStyle: style, .baselineOffset: (lineHeight - font.lineHeight) / 2]
        return NSAttributedString(string: self, attributes: attributes)
    }
}

extension Typography {
    var font: UIFont {
        let result: UIFont
        switch self {
        case .hero1: result = UIFont.systemFont(ofSize: 110, weight: .heavy)
        case .hero2: result = UIFont.systemFont(ofSize: 48, weight: .heavy)
        case .title1: result = UIFont.systemFont(ofSize: 32, weight: .heavy)
        case .title2: result = UIFont.systemFont(ofSize: 26, weight: .heavy)
        case .title3: result = UIFont.systemFont(ofSize: 20, weight: .heavy)
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
        let attributes: [NSAttributedString.Key: Any] = [.font: type.font, .foregroundColor: UIColor.onSurfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
    
    public var hero: NSMutableAttributedString {
        return attributedString(type: .hero1)
    }
    
    public var title: NSMutableAttributedString {
        return attributedString(type: .title1)
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
    
    @available(*, deprecated, message: "Use .ALColor.\"color name\" instead")
    public func addColor(_ color: ALColor) -> NSMutableAttributedString {
        let result = self
        let range = NSRange(location: 0, length: self.length)
        if attribute(.foregroundColor, at: 0, effectiveRange: nil) != nil {
            removeAttribute(.foregroundColor, range: range)
        }
        result.addAttribute(.foregroundColor, value: color.color, range: range)
        return result
    }
    
    public func addColor(_ uiColor: UIColor) -> NSMutableAttributedString {
        let result = self
        let range = NSRange(location: 0, length: self.length)
        if attribute(.foregroundColor, at: 0, effectiveRange: nil) != nil {
            removeAttribute(.foregroundColor, range: range)
        }
        result.addAttribute(.foregroundColor, value: uiColor, range: range)
        return result
    }
    
    public func addAlignment(_ alignment: NSTextAlignment) -> NSMutableAttributedString {
        let result = self
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        let range = NSRange(location: 0, length: self.length)
        if attribute(.paragraphStyle, at: 0, effectiveRange: nil) != nil {
            removeAttribute(.paragraphStyle, range: range)
        }
        result.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: self.length))
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
