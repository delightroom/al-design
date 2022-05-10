//
//  ALTagType.swift
//  
//
//  Created by 이옥민 on 2022/04/18.
//

import UIKit

public enum ALTagType {
    case small
    case medium
}

extension ALTagType {
    func attributedTitle(for title: String) -> NSMutableAttributedString {
        let result: NSMutableAttributedString
        switch self {
        case .small: result = title.text(.caption3).addColor(.onPrimary)
        case .medium: result = title.text(.subtitle1).addColor(.onPrimary)
        }
        return result
    }
    
    var height: CGFloat {
        let result: CGFloat
        switch self {
        case .small: result = 24
        case .medium: result = 32
        }
        return result
    }
    
    var cornerRadius: CGFloat {
        return height / 2
    }
}
