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

public enum Typography {
    case hero1
    case hero2
    case title1
    case title2
    case title3
    case subtitle1
    case subtitle2
    case paragraph
    case overline
    case caption1
    case caption2
    case caption3
}

extension String {
    public func number(_ typo: Typography) -> NSMutableAttributedString {
        let font: UIFont
        switch typo {
        case .hero1: font = lexend(.regular, ofSize: 110)
        case .hero2: font = lexend(.semiBold, ofSize: 48)
        case .title1: font = lexend(.semiBold, ofSize: 32)
        case .title2: font = lexend(.semiBold, ofSize: 26)
        case .title3: font = lexend(.semiBold, ofSize: 20)
        default: font = lexend(.semiBold, ofSize: 20)
        }
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.surfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
    
    public func text(_ typo: Typography) -> NSMutableAttributedString {
        let font: UIFont
        switch typo {
        case .hero1: font = UIFont.systemFont(ofSize: 110)
        case .hero2: font = UIFont.systemFont(ofSize: 48, weight: .heavy)
        case .title1: font = UIFont.systemFont(ofSize: 32, weight: .heavy)
        case .title2: font = UIFont.systemFont(ofSize: 26, weight: .heavy)
        case .title3: font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        case .subtitle1: font = UIFont.systemFont(ofSize: 18, weight: .heavy)
        case .subtitle2: font = UIFont.systemFont(ofSize: 18)
        case .paragraph: font = UIFont.systemFont(ofSize: 16)
        case .overline: font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        case .caption1: font = UIFont.systemFont(ofSize: 14)
        case .caption2: font = UIFont.systemFont(ofSize: 12, weight: .heavy)
        case .caption3: font = UIFont.systemFont(ofSize: 12)
        }
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.surfaceHighEmphasis]
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
