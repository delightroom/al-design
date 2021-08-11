//
//  NaviIcon.swift
//  
//
//  Created by smis on 2021/08/11.
//

import UIKit

public enum NaviIcon {
    case alarm
    case history
    case sleep
    case today
    case setting
}

extension NaviIcon {
    public var filled: UIImage {
        let result: UIImage
        switch self {
        case .alarm: result = UIImage(named: "ic_alarm_filled_24_24", in: .module, compatibleWith: nil)!
        case .history: result = UIImage(named: "ic_history_filled_24_24", in: .module, compatibleWith: nil)!
        case .sleep: result = UIImage(named: "ic_sleep_filled_24_24", in: .module, compatibleWith: nil)!
        case .today: result = UIImage(named: "ic_todaypanel_filled_24_24", in: .module, compatibleWith: nil)!
        case .setting: result = UIImage(named: "ic_setting_filled_24_24", in: .module, compatibleWith: nil)!
        }
        return result
    }
    
    public var outline: UIImage {
        let result: UIImage
        switch self {
        case .alarm: result = UIImage(named: "ic_alarm_outline_24_24", in: .module, compatibleWith: nil)!
        case .history: result = UIImage(named: "ic_history_outline_24_24", in: .module, compatibleWith: nil)!
        case .sleep: result = UIImage(named: "ic_sleep_outline_24_24", in: .module, compatibleWith: nil)!
        case .today: result = UIImage(named: "ic_history_outline_24_24", in: .module, compatibleWith: nil)!
        case .setting: result = UIImage(named: "ic_setting_outline_24_24", in: .module, compatibleWith: nil)!
        }
        return result
    }
}
