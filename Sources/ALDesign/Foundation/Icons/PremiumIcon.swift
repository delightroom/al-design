//
//  PremiumIcon.swift
//  
//
//  Created by smis on 2021/08/11.
//

import UIKit

public enum PremiumIcon {
    case missionDefault
    case missionPhoto
    case missionShake
    case missionMath
    case missionBarcode
    case missionMemory
    case missionWalking
    case missionTyping
    case timepressure
    case backupsound
    case spp
    case wuc
    case labelReminder
    case purchaseNewfeatures
    case purchaseTurnoffads
    case premium
    case missionSquat
}

extension PremiumIcon {
    public var image: UIImage {
        let result: UIImage
        switch self {
        case .missionDefault: result = UIImage(named: "ic_mission_default_24_24", in: .module, compatibleWith: nil)!
        case .missionPhoto: result = UIImage(named: "ic_mission_photo_24_24", in: .module, compatibleWith: nil)!
        case .missionShake: result = UIImage(named: "ic_mission_shake_24_24", in: .module, compatibleWith: nil)!
        case .missionMath: result = UIImage(named: "ic_mission_math_24_24", in: .module, compatibleWith: nil)!
        case .missionBarcode: result = UIImage(named: "ic_mission_barcode_24_24", in: .module, compatibleWith: nil)!
        case .missionMemory: result = UIImage(named: "ic_mission_memory_24_24", in: .module, compatibleWith: nil)!
        case .missionWalking: result = UIImage(named: "ic_mission_walking_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .missionTyping: result = UIImage(named: "ic_mission_typing_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .timepressure: result = UIImage(named: "ic_timepressure_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .backupsound: result = UIImage(named: "ic_backupsound_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .spp: result = UIImage(named: "ic_spp_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .wuc: result = UIImage(named: "ic_wuc_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .labelReminder: result = UIImage(named: "ic_label_reminder_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .purchaseNewfeatures: result = UIImage(named: "ic_purchase_newfeatures_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .purchaseTurnoffads: result = UIImage(named: "ic_purchase_turnoffads_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .premium: result = UIImage(named: "ic_premium_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        case .missionSquat: result = UIImage(named: "ic_mission_squat_gradient_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
        }
        return result
    }
    
    public var gradientImage: UIImage {
        let result: UIImage
        switch self {
        case .missionWalking: result = UIImage(named: "ic_mission_walking_gradient_24_24", in: .module, compatibleWith: nil)!
        case .missionTyping: result = UIImage(named: "ic_mission_typing_gradient_24_24", in: .module, compatibleWith: nil)!
        case .timepressure: result = UIImage(named: "ic_timepressure_gradient_24_24", in: .module, compatibleWith: nil)!
        case .backupsound: result = UIImage(named: "ic_backupsound_gradient_24_24", in: .module, compatibleWith: nil)!
        case .spp: result = UIImage(named: "ic_spp_gradient_24_24", in: .module, compatibleWith: nil)!
        case .wuc: result = UIImage(named: "ic_wuc_gradient_24_24", in: .module, compatibleWith: nil)!
        case .labelReminder: result = UIImage(named: "ic_label_reminder_gradient_24_24", in: .module, compatibleWith: nil)!
        case .purchaseNewfeatures: result = UIImage(named: "ic_purchase_newfeatures_gradient_24_24", in: .module, compatibleWith: nil)!
        case .purchaseTurnoffads: result = UIImage(named: "ic_purchase_turnoffads_gradient_24_24", in: .module, compatibleWith: nil)!
        case .premium: result = UIImage(named: "ic_premium_gradient_24_24", in: .module, compatibleWith: nil)!
        case .missionSquat: result = UIImage(named: "ic_mission_squat_gradient_24_24", in: .module, compatibleWith: nil)!
        default: result = UIImage()
        }
        return result
    }
}
