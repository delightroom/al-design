//
//  ALColor.swift
//
//
//  Created by smis on 2021/07/05.
//

import UIKit

internal func lexendSemiBold(ofSize size: CGFloat) -> UIFont {
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
    case subtitle
    case button
    case paragraph
    case overline
    case caption1
    case caption2
    case caption3
}

extension String {
    public func number(_ typo: Typography) -> NSMutableAttributedString {
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
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.surfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
    
    public func text(_ typo: Typography) -> NSMutableAttributedString {
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
        case .subtitle:
            font = UIFont.systemFont(ofSize: 18)
            lineHeight = 24
        case .button:
            font = UIFont.systemFont(ofSize: 18, weight: .heavy)
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
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.surfaceHighEmphasis, .paragraphStyle: style, .baselineOffset: (lineHeight - font.lineHeight) / 2]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
}

extension NSMutableAttributedString {
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
