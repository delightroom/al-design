//
//  ALTooltipType.swift
//  
//
//  Created by 이옥민 on 2022/04/07.
//

import Foundation
import UIKit

public enum ALTooltipType {
    case smallTop
    case smallBottom
    case basicTop
    case basicBottom
    case contentsTop
    case contentsBottom
}

extension ALTooltipType {
    func attributedTitle(for title: String?) -> NSMutableAttributedString? {
        guard let title = title else { return nil }
        return title.button.addColor(.onPrimary)
    }
    
    func attributedMessage(for message: String) -> NSMutableAttributedString {
        let result: NSMutableAttributedString
        switch self {
        case .smallTop, .smallBottom: result = message.overline
        case .basicTop, .basicBottom: result = message.paragraph.addColor(.onPrimary)
        case .contentsTop, .contentsBottom: result = message.caption.addColor(.onPrimary)
        }
        return result
    }
    
    var backgroundColor: UIColor {
        let result: UIColor
        switch self {
        case .smallTop, .smallBottom: result = ALColorPalette.gray400.value
        case .basicTop, .basicBottom, .contentsTop, .contentsBottom: result = .secondary
        }
        return result
    }
}
