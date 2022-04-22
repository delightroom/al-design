//
//  ALColorPalette.swift
//  
//
//  Created by 이옥민 on 2022/04/12.
//

import Foundation
import UIKit


public enum ALColorPalette {
    case white
    case white50
    case white100
    case white200
    case white300
    case white400
    case white500
    case white600
    case white700
    case white800
    case white900
    case black
    case black50
    case black100
    case black200
    case black300
    case black400
    case black500
    case black600
    case black700
    case black800
    case black900
    case gray50
    case gray100
    case gray200
    case gray300
    case gray400
    case gray500
    case gray600
    case gray700
    case gray800
    case gray900
}

extension ALColorPalette {
    public var value: UIColor {
        let result: UIColor
        let isLightTheme: Bool = UITraitCollection.current.userInterfaceStyle == .light
        switch self {
        case .white: result = UIColor(hexString: "#FFFFFF")
        case .white50: result = UIColor(hexString: "#F7FAFF")
        case .white100: result = UIColor(hexString: "#F2F6FF")
        case .white200: result = UIColor(hexString: "#EDF1FA")
        case .white300: result = UIColor(hexString: "#E6ECF7")
        case .white400: result = UIColor(hexString: "#DDE3F0")
        case .white500: result = UIColor(hexString: "#D5DCEB")
        case .white600: result = UIColor(hexString: "#CCD3E3")
        case .white700: result = UIColor(hexString: "#C2CADA")
        case .white800: result = UIColor(hexString: "#B4BDCF")
        case .white900: result = UIColor(hexString: "#ABB3C4")
        case .black: result = UIColor(hexString: "#0B0C0F")
        case .black50: result = UIColor(hexString: "#15171C")
        case .black100: result = UIColor(hexString: "#1D1F26")
        case .black200: result = UIColor(hexString: "#24272E")
        case .black300: result = UIColor(hexString: "#2F333D")
        case .black400: result = UIColor(hexString: "#3E434F")
        case .black500: result = UIColor(hexString: "#4B515E")
        case .black600: result = UIColor(hexString: "#585F6E")
        case .black700: result = UIColor(hexString: "#666D7D")
        case .black800: result = UIColor(hexString: "#747C8C")
        case .black900: result = UIColor(hexString: "#858E9E")
        case .gray50: result = isLightTheme ? ALColorPalette.white50.value : ALColorPalette.black50.value
        case .gray100: result = isLightTheme ? ALColorPalette.white100.value : ALColorPalette.black100.value
        case .gray200: result = isLightTheme ? ALColorPalette.white200.value : ALColorPalette.black200.value
        case .gray300: result = isLightTheme ? ALColorPalette.white300.value : ALColorPalette.black300.value
        case .gray400: result = isLightTheme ? ALColorPalette.white400.value : ALColorPalette.black400.value
        case .gray500: result = isLightTheme ? ALColorPalette.white500.value : ALColorPalette.black500.value
        case .gray600: result = isLightTheme ? ALColorPalette.white600.value : ALColorPalette.black600.value
        case .gray700: result = isLightTheme ? ALColorPalette.white700.value : ALColorPalette.black700.value
        case .gray800: result = isLightTheme ? ALColorPalette.white800.value : ALColorPalette.black800.value
        case .gray900: result = isLightTheme ? ALColorPalette.white900.value : ALColorPalette.black900.value
        }
        return result
    }
}
