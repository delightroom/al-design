//
//  CommonIcon.swift
//  
//
//  Created by smis on 2021/08/11.
//

import UIKit

public enum CommonIcon {
    case close
    case add
    case back
    case forward
    case checkmark
    case go
    case delete
    case preview
    case search
    case moreHorizon
    case moreVertical
    case snooze
    case alarmy
    case quick
    case skip
    case copy
    case `repeat`
    case ringtone
    case sound
    case mute
    case vibrate
    case backspace
    case important
    case ok
    case caution
    case info
    case heart
    case sent
    case theme
    case play
    case stop
    case label
    case circle
    case faq
    case share
    case twitter
    case facebook
    case instagram
    case imagecheck
    case edit
    case under
    case reset
    case quotes
    case undo
    case flashoff
    case flash
    case subsetting
    case lock
}

extension CommonIcon {
    public var image: UIImage {
        let result: UIImage
        switch self {
        case .close: result = UIImage(named: "ic_close_24_24" , in: .module, compatibleWith: nil)!
        case .add: result = UIImage(named: "ic_add_24_24" , in: .module, compatibleWith: nil)!
        case .back: result = UIImage(named: "ic_back_24_24" , in: .module, compatibleWith: nil)!
        case .forward: result = UIImage(named: "ic_forward_24_24" , in: .module, compatibleWith: nil)!
        case .checkmark: result = UIImage(named: "ic_checkmark_24_24" , in: .module, compatibleWith: nil)!
        case .go: result = UIImage(named: "ic_go_24_24" , in: .module, compatibleWith: nil)!
        case .delete: result = UIImage(named: "ic_delete_24_24" , in: .module, compatibleWith: nil)!
        case .preview: result = UIImage(named: "ic_preview_24_24" , in: .module, compatibleWith: nil)!
        case .search: result = UIImage(named: "ic_search_24_24" , in: .module, compatibleWith: nil)!
        case .moreHorizon: result = UIImage(named: "ic_more_horizon_24_24" , in: .module, compatibleWith: nil)!
        case .moreVertical: result = UIImage(named: "ic_more_vertical_24_24" , in: .module, compatibleWith: nil)!
        case .snooze: result = UIImage(named: "ic_snooze_24_24" , in: .module, compatibleWith: nil)!
        case .alarmy: result = UIImage(named: "ic_alarmy_24_24" , in: .module, compatibleWith: nil)!
        case .quick: result = UIImage(named: "ic_quick_24_24" , in: .module, compatibleWith: nil)!
        case .skip: result = UIImage(named: "ic_skip_24_24" , in: .module, compatibleWith: nil)!
        case .copy: result = UIImage(named: "ic_copy_24_24" , in: .module, compatibleWith: nil)!
        case .repeat: result = UIImage(named: "ic_repeat_24_24" , in: .module, compatibleWith: nil)!
        case .ringtone: result = UIImage(named: "ic_ringtone_24_24" , in: .module, compatibleWith: nil)!
        case .sound: result = UIImage(named: "ic_sound_24_24" , in: .module, compatibleWith: nil)!
        case .mute: result = UIImage(named: "ic_mute_24_24" , in: .module, compatibleWith: nil)!
        case .vibrate: result = UIImage(named: "ic_vibrate_24_24" , in: .module, compatibleWith: nil)!
        case .backspace: result = UIImage(named: "ic_backspace_24_24" , in: .module, compatibleWith: nil)!
        case .important: result = UIImage(named: "ic_important_24_24" , in: .module, compatibleWith: nil)!
        case .ok: result = UIImage(named: "ic_ok_24_24" , in: .module, compatibleWith: nil)!
        case .caution: result = UIImage(named: "ic_caution_24_24" , in: .module, compatibleWith: nil)!
        case .info: result = UIImage(named: "ic_info_24_24" , in: .module, compatibleWith: nil)!
        case .heart: result = UIImage(named: "ic_heart_24_24" , in: .module, compatibleWith: nil)!
        case .sent: result = UIImage(named: "ic_sent_24_24" , in: .module, compatibleWith: nil)!
        case .theme: result = UIImage(named: "ic_theme_24_24" , in: .module, compatibleWith: nil)!
        case .play: result = UIImage(named: "ic_play_24_24" , in: .module, compatibleWith: nil)!
        case .stop: result = UIImage(named: "ic_stop_24_24" , in: .module, compatibleWith: nil)!
        case .label: result = UIImage(named: "ic_label_24_24" , in: .module, compatibleWith: nil)!
        case .circle: result = UIImage(named: "ic_circle_24_24" , in: .module, compatibleWith: nil)!
        case .faq: result = UIImage(named: "ic_faq_24_24" , in: .module, compatibleWith: nil)!
        case .share: result = UIImage(named: "ic_share_24_24" , in: .module, compatibleWith: nil)!
        case .twitter: result = UIImage(named: "ic_twitter_24_24" , in: .module, compatibleWith: nil)!
        case .facebook: result = UIImage(named: "ic_facebook_24_24" , in: .module, compatibleWith: nil)!
        case .instagram: result = UIImage(named: "ic_instagram_24_24" , in: .module, compatibleWith: nil)!
        case .imagecheck: result = UIImage(named: "ic_imagecheck_24_24" , in: .module, compatibleWith: nil)!
        case .edit: result = UIImage(named: "ic_edit_24_24" , in: .module, compatibleWith: nil)!
        case .under: result = UIImage(named: "ic_under_24_24" , in: .module, compatibleWith: nil)!
        case .reset: result = UIImage(named: "ic_reset_24_24" , in: .module, compatibleWith: nil)!
        case .quotes: result = UIImage(named: "ic_quotes_24_24" , in: .module, compatibleWith: nil)!
        case .undo: result = UIImage(named: "ic_undo_24_24" , in: .module, compatibleWith: nil)!
        case .flashoff: result = UIImage(named: "ic_flashoff_24_24" , in: .module, compatibleWith: nil)!
        case .flash: result = UIImage(named: "ic_flash_24_24" , in: .module, compatibleWith: nil)!
        case .subsetting: result = UIImage(named: "ic_subsetting_24_24" , in: .module, compatibleWith: nil)!
        case .lock: result = UIImage(named: "ic_lock_24_24" , in: .module, compatibleWith: nil)!
        
        }
        return result
    }
}
