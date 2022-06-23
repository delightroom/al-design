//
//  ALColor.swift
//
//
//  Created by smis on 2021/07/05.
//

import UIKit

enum LexendType: String {
    case semiBold = "Lexend-SemiBold"
    case regular = "Lexend-Regular"
}

func lexend(_ type: LexendType, ofSize size: CGFloat) -> UIFont {
    let lexendFont = UIFont(name: type.rawValue, size: size)
    let systemFont = UIFont.systemFont(ofSize: size, weight: .heavy)
    guard lexendFont == nil else { return lexendFont! }
    guard let fontUrl = Bundle.module.url(forResource: type.rawValue, withExtension: "ttf"),
          let fontDataProvider = CGDataProvider(url: fontUrl as CFURL),
          let font = CGFont(fontDataProvider) else {
              return systemFont
          }
    var error: Unmanaged<CFError>?
    guard CTFontManagerRegisterGraphicsFont(font, &error) else {
        return systemFont
    }
    return UIFont(name: type.rawValue, size: size)!
}

public struct Typography {
    let font: UIFont
}

extension Typography {
    public static let hero1: Typography = {
        return .init(font: .systemFont(ofSize: 110))
    }()
    
    public static let hero2: Typography = {
        return .init(font: .systemFont(ofSize: 48, weight: .heavy))
    }()
    
    public static let title1: Typography = {
        return .init(font: .systemFont(ofSize: 32, weight: .heavy))
    }()
    
    public static let title2: Typography = {
        return .init(font: .systemFont(ofSize: 26, weight: .heavy))
    }()
    
    public static let title3: Typography = {
        return .init(font: .systemFont(ofSize: 20, weight: .heavy))
    }()
    
    public static let subtitle1: Typography = {
        return .init(font: .systemFont(ofSize: 18, weight: .heavy))
    }()
    
    public static let subtitle2: Typography = {
        return .init(font: .systemFont(ofSize: 18))
    }()
    
    public static let paragraph: Typography = {
        return .init(font: .systemFont(ofSize: 16))
    }()
    
    public static let overline: Typography = {
        return .init(font: .systemFont(ofSize: 14, weight: .heavy))
    }()
    
    public static let caption1: Typography = {
        return .init(font: .systemFont(ofSize: 14))
    }()
    
    public static let caption2: Typography = {
        return .init(font: .systemFont(ofSize: 12, weight: .heavy))
    }()
    
    public static let caption3: Typography = {
        return .init(font: .systemFont(ofSize: 12))
    }()
}

extension String {
    public func font(_ typo: Typography) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [.font: typo.font, .foregroundColor: UIColor.surfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
}

extension NSMutableAttributedString {
    public func number() -> NSMutableAttributedString {
        guard let font = attribute(.font, at: 0, effectiveRange: nil) as? UIFont else { return self }
        let range = NSRange(location: 0, length: length)
        addAttribute(.font, value: lexend(font.pointSize == 110 ? .regular : .semiBold, ofSize: font.pointSize), range: range)
        return self
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
