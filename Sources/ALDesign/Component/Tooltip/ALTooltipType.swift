//
//  ALTooltipType.swift
//  
//
//  Created by 이옥민 on 2022/04/07.
//

import Foundation
import UIKit

public enum ALTooltipType {
    case small
    case basic
    case contents
}

extension ALTooltipType {
    var backgroundColor: UIColor {
        let result: UIColor
        switch self {
        case .small: result = UIColor(hexString: "#3E434F")
        case .basic, .contents: result = .secondary
        }
        return result
    }
}

public enum ALTooltipArrowDirection {
    case top
    case bottom
}
