//
//  ALTooltipType.swift
//  
//
//  Created by 이옥민 on 2022/04/07.
//

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
        return title.text(.subtitle1).addColor(.onPrimary)
    }
    
    func attributedMessage(for message: String) -> NSMutableAttributedString {
        let result: NSMutableAttributedString
        switch self {
        case .smallTop, .smallBottom: result = message.text(.overline)
        case .basicTop, .basicBottom: result = message.text(.paragraph).addColor(.onPrimary)
        case .contentsTop, .contentsBottom: result = message.text(.caption1).addColor(.onPrimary)
        }
        return result
    }
    
    var backgroundColor: UIColor {
        let result: UIColor
        switch self {
        case .smallTop, .smallBottom: result = .gray400
        case .basicTop, .basicBottom, .contentsTop, .contentsBottom: result = .secondary
        }
        return result
    }
    
    var horizontalEdgeInset: CGFloat {
        let result: CGFloat
        switch self {
        case .smallTop, .smallBottom: result = 8
        case .basicTop, .basicBottom, .contentsTop, .contentsBottom: result = 16
        }
        return result
    }
    
    var verticalEdgeInset: CGFloat {
        let result: CGFloat
        switch self {
        case .smallTop, .smallBottom: result = 8
        case .basicTop, .basicBottom: result = 10
        case .contentsTop, .contentsBottom: result = 16
        }
        return result
    }
    
    var maxWidth: CGFloat {
        let result: CGFloat
        switch self {
        case .smallTop, .smallBottom, .basicTop, .basicBottom: result = 270
        case .contentsTop, .contentsBottom: result = UIScreen.main.bounds.width - 64
        }
        return result
    }
}
