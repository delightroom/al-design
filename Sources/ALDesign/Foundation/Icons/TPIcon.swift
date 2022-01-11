//
//  TPIcon.swift
//  
//
//  Created by smis on 2022/01/11.
//

import Foundation
import UIKit

public struct TPIcon {
    public static let emojiLove = UIImage(named: "ic_weather_emoji_love_16_16", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let emojiNeutral = UIImage(named: "ic_weather_emoji_neutral_16_16", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let emojiSad = UIImage(named: "ic_weather_emoji_sad_16_16", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let emojiAngry = UIImage(named: "ic_weather_emoji_angry_16_16", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let emojiSkull = UIImage(named: "ic_weather_emoji_skull_16_16", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let unstableConnection = UIImage(named: "ic_UnstableConnection_TodayPanel_60", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let noPermission = UIImage(named: "ic_NoPermission_TodayPanel_60", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let aries = UIImage(named: "ic_horoscope_aries_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let taurus = UIImage(named: "ic_horoscope_taurusic_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let gemini = UIImage(named: "ic_horoscope_geminiic_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let cancer = UIImage(named: "ic_horoscope_cancer_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let leo = UIImage(named: "ic_horoscope_leo_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let virgo = UIImage(named: "ic_horoscope_virgo_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let libra = UIImage(named: "ic_horoscope_libra_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let scorpio = UIImage(named: "ic_horoscope_scorpio_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let sagittarius = UIImage(named: "ic_horoscope_sagittarius_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let capricorn = UIImage(named: "ic_horoscope_capricorn_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let aquarius = UIImage(named: "ic_horoscope_aquarius_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static let pisces = UIImage(named: "ic_horoscope_pisces_16_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    public static var sunnyDay48: UIImage {
        return UIImage(named: "ic_weather_sunny_day_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var sunnyNight48: UIImage {
        return UIImage(named: "ic_weather_sunny_night_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var cloudy48: UIImage {
        return UIImage(named: "ic_weather_cloudy_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var thunder48: UIImage {
        return UIImage(named: "ic_weather_thunder_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var mist48: UIImage {
        return UIImage(named: "ic_weather_mist_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var lightCloudyDay48: UIImage {
        return UIImage(named: "ic_weather_lightcloudy_day_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var lightCloudyNight48: UIImage {
        return UIImage(named: "ic_weather_lightcloudy_night_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var rainy48: UIImage {
        return UIImage(named: "ic_weather_rainy_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var snowy48: UIImage {
        return UIImage(named: "ic_weather_snowy_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var unknown48: UIImage {
        return UIImage(named: "ic_weather_unknown_\(theme)_48_48", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var sunnyDay32: UIImage {
        return UIImage(named: "ic_weather_sunny_day_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var sunnyNight32: UIImage {
        return UIImage(named: "ic_weather_sunny_night_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var cloudy32: UIImage {
        return UIImage(named: "ic_weather_cloudy_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var thunder32: UIImage {
        return UIImage(named: "ic_weather_thunder_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var mist32: UIImage {
        return UIImage(named: "ic_weather_mist_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var lightCloudyDay32: UIImage {
        return UIImage(named: "ic_weather_lightcloudy_day_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var lightCloudyNight32: UIImage {
        return UIImage(named: "ic_weather_lightcloudy_night_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var rainy32: UIImage {
        return UIImage(named: "ic_weather_rainy_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var snowy32: UIImage {
        return UIImage(named: "ic_weather_snowy_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var unknown32: UIImage {
        return UIImage(named: "ic_weather_unknown_\(theme)_32_32", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var sunnyDay24: UIImage {
        return UIImage(named: "ic_weather_sunny_day_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var sunnyNight24: UIImage {
        return UIImage(named: "ic_weather_sunny_night_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var cloudy24: UIImage {
        return UIImage(named: "ic_weather_cloudy_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var thunder24: UIImage {
        return UIImage(named: "ic_weather_thunder_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var mist24: UIImage {
        return UIImage(named: "ic_weather_mist_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var lightCloudyDay24: UIImage {
        return UIImage(named: "ic_weather_lightcloudy_day_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var lightCloudyNight24: UIImage {
        return UIImage(named: "ic_weather_lightcloudy_night_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var rainy24: UIImage {
        return UIImage(named: "ic_weather_rainy_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var snowy24: UIImage {
        return UIImage(named: "ic_weather_snowy_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    public static var unknown24: UIImage {
        return UIImage(named: "ic_weather_unknown_\(theme)_24_24", in: .module, compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
    
    static var theme: String {
        let result: String
        switch UITraitCollection.current.userInterfaceStyle {
        case .light: result = "light"
        default: result = "dark"
        }
        return result
    }
}
