//
//  ALColor.swift
//
//
//  Created by smis on 2021/07/05.
//

import UIKit

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

extension Typography {
    var font: UIFont {
        let result: UIFont
        switch self {
        case .hero1: result = UIFont.boldSystemFont(ofSize: 110)
        case .hero2: result = UIFont.boldSystemFont(ofSize: 48)
        case .title1: result = UIFont.boldSystemFont(ofSize: 32)
        case .title2: result = UIFont.boldSystemFont(ofSize: 26)
        case .title3: result = UIFont.boldSystemFont(ofSize: 20)
        case .button: result = UIFont.boldSystemFont(ofSize: 17)
        case .paragraph: result = UIFont.systemFont(ofSize: 16)
        case .overline: result = UIFont.boldSystemFont(ofSize: 14)
        case .caption1: result = UIFont.systemFont(ofSize: 14)
        case .caption2: result = UIFont.boldSystemFont(ofSize: 12)
        case .caption3: result = UIFont.systemFont(ofSize: 12)
        }
        return result
    }
}

extension String {
    public func attributedString(type: Typography, alignment: NSTextAlignment = .left, color: ALColor = .onSurfaceHighEmphasis) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = alignment
        let attributes: [NSAttributedString.Key: Any] = [.font: type.font, .foregroundColor: color.color, .paragraphStyle: paragraphStyle]
        return NSAttributedString(string: self, attributes: attributes)
    }
}
