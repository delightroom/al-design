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

extension String {
    public func button(_ typo: ButtonTypography) -> NSMutableAttributedString {
        let font: UIFont
        switch typo {
        case .button1: font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        case .button2: font = UIFont.systemFont(ofSize: 18, weight: .heavy)
        case .button3: font = UIFont.systemFont(ofSize: 14, weight: .heavy)
        case .button4: font = UIFont.systemFont(ofSize: 14)
        }
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.surfaceHighEmphasis]
        return NSMutableAttributedString(string: self, attributes: attributes)
    }
}
