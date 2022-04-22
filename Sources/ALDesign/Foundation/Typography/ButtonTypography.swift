//
//  ButtonTypography.swift
//  
//
//  Created by 이옥민 on 2022/04/22.
//

import UIKit

public enum ButtonTypography {
    case button1
    case button2
    case button3
    case button4
}

extension ButtonTypography {
    var font: UIFont {
        let result: UIFont
        switch self {
        case .button1: result = UIFont.systemFont(ofSize: 20, weight: .heavy)
        case .button2: result = UIFont.systemFont(ofSize: 18, weight: .heavy)
        case .button3: result = UIFont.systemFont(ofSize: 14, weight: .heavy)
        case .button4: result = UIFont.systemFont(ofSize: 14)
        }
        return result
    }
}

extension String {
    public func button(_ typo: ButtonTypography) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [.font: typo.font, .foregroundColor: UIColor.surfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
}
