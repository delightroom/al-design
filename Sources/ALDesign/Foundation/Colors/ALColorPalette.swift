//
//  ALColorPalette.swift
//  
//
//  Created by 이옥민 on 2022/04/12.
//

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
    
    case red900
    case red800
    case red700
    case red600
    case red500
    case red400
    case red300
    case red200
    case red100
    case red50
    
    case orange900
    case orange800
    case orange700
    case orange600
    case orange500
    case orange400
    case orange300
    case orange200
    case orange100
    case orange50
    
    case yellow900
    case yellow800
    case yellow700
    case yellow600
    case yellow500
    case yellow400
    case yellow300
    case yellow200
    case yellow100
    case yellow50
    
    case green900
    case green800
    case green700
    case green600
    case green500
    case green400
    case green300
    case green200
    case green100
    case green50
    
    case sky900
    case sky800
    case sky700
    case sky600
    case sky500
    case sky400
    case sky300
    case sky200
    case sky100
    case sky50
    
    case blue900
    case blue800
    case blue700
    case blue600
    case blue500
    case blue400
    case blue300
    case blue200
    case blue100
    case blue50
    
    case purple900
    case purple800
    case purple700
    case purple600
    case purple500
    case purple400
    case purple300
    case purple200
    case purple100
    case purple50
    
    case magenta900
    case magenta800
    case magenta700
    case magenta600
    case magenta500
    case magenta400
    case magenta300
    case magenta200
    case magenta100
    case magenta50
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
        case .red900: result = UIColor(hexString: "#FCF7F8")
        case .red800: result = UIColor(hexString: "#FCDCE0")
        case .red700: result = UIColor(hexString: "#FCBBC4")
        case .red600: result = UIColor(hexString: "#FC95A3")
        case .red500: result = UIColor(hexString: "#FA697C")
        case .red400: result = UIColor(hexString: "#F73E56")
        case .red300: result = UIColor(hexString: "#EB1E3A")
        case .red200: result = UIColor(hexString: "#CF0A24")
        case .red100: result = UIColor(hexString: "#91091B")
        case .red50: result = UIColor(hexString: "#3D151A")
        case .orange900: result = UIColor(hexString: "#FFFAF2")
        case .orange800: result = UIColor(hexString: "#FFE2BA")
        case .orange700: result = UIColor(hexString: "#FFC582")
        case .orange600: result = UIColor(hexString: "#FCA553")
        case .orange500: result = UIColor(hexString: "#F27E24")
        case .orange400: result = UIColor(hexString: "#DB5B0B")
        case .orange300: result = UIColor(hexString: "#BD3F00")
        case .orange200: result = UIColor(hexString: "#992C02")
        case .orange100: result = UIColor(hexString: "#66200A")
        case .orange50: result = UIColor(hexString: "#3B1912")
        case .yellow900: result = UIColor(hexString: "#FFFDE0")
        case .yellow800: result = UIColor(hexString: "#FFEF75")
        case .yellow700: result = UIColor(hexString: "#FCD823")
        case .yellow600: result = UIColor(hexString: "#EDBB07")
        case .yellow500: result = UIColor(hexString: "#CF9700")
        case .yellow400: result = UIColor(hexString: "#A87403")
        case .yellow300: result = UIColor(hexString: "#875A0B")
        case .yellow200: result = UIColor(hexString: "#634213")
        case .yellow100: result = UIColor(hexString: "#472E17")
        case .yellow50: result = UIColor(hexString: "#291F16")
        case .green900: result = UIColor(hexString: "#F5FCF6")
        case .green800: result = UIColor(hexString: "#C5FCCD")
        case .green700: result = UIColor(hexString: "#8CFAA2")
        case .green600: result = UIColor(hexString: "#50F279")
        case .green500: result = UIColor(hexString: "#1FDE58")
        case .green400: result = UIColor(hexString: "#06BD46")
        case .green300: result = UIColor(hexString: "#00963C")
        case .green200: result = UIColor(hexString: "#017033")
        case .green100: result = UIColor(hexString: "#084D2A")
        case .green50: result = UIColor(hexString: "#0F2E18")
        case .sky900: result = UIColor(hexString: "#F7FBFC")
        case .sky800: result = UIColor(hexString: "#C5F1FC")
        case .sky700: result = UIColor(hexString: "#91E7FA")
        case .sky600: result = UIColor(hexString: "#5FD7F5")
        case .sky500: result = UIColor(hexString: "#2BBEE3")
        case .sky400: result = UIColor(hexString: "#0EA0C4")
        case .sky300: result = UIColor(hexString: "#0381A1")
        case .sky200: result = UIColor(hexString: "#02627A")
        case .sky100: result = UIColor(hexString: "#074554")
        case .sky50: result = UIColor(hexString: "#0E2930")
        case .blue900: result = UIColor(hexString: "#F8F9FD")
        case .blue800: result = UIColor(hexString: "#DEE5FC")
        case .blue700: result = UIColor(hexString: "#C0CDFC")
        case .blue600: result = UIColor(hexString: "#A1B4F7")
        case .blue500: result = UIColor(hexString: "#7C94EB")
        case .blue400: result = UIColor(hexString: "#5B75D4")
        case .blue300: result = UIColor(hexString: "#425CB8")
        case .blue200: result = UIColor(hexString: "#314694")
        case .blue100: result = UIColor(hexString: "#243263")
        case .blue50: result = UIColor(hexString: "#161F40")
        case .purple900: result = UIColor(hexString: "#FBFAFF")
        case .purple800: result = UIColor(hexString: "#E9E0FF")
        case .purple700: result = UIColor(hexString: "#D4C5FC")
        case .purple600: result = UIColor(hexString: "#BCA6F7")
        case .purple500: result = UIColor(hexString: "#9F82ED")
        case .purple400: result = UIColor(hexString: "#8160DB")
        case .purple300: result = UIColor(hexString: "#6746C2")
        case .purple200: result = UIColor(hexString: "#4F32A1")
        case .purple100: result = UIColor(hexString: "#392473")
        case .purple50: result = UIColor(hexString: "#251B42")
        case .magenta900: result = UIColor(hexString: "#FCF7FC")
        case .magenta800: result = UIColor(hexString: "#FCD7F9")
        case .magenta700: result = UIColor(hexString: "#F7B5F2")
        case .magenta600: result = UIColor(hexString: "#F28DEA")
        case .magenta500: result = UIColor(hexString: "#DE66D4")
        case .magenta400: result = UIColor(hexString: "#C246B7")
        case .magenta300: result = UIColor(hexString: "#A13297")
        case .magenta200: result = UIColor(hexString: "#7A2573")
        case .magenta100: result = UIColor(hexString: "#541F50")
        case .magenta50: result = UIColor(hexString: "#30182E")
        }
        return result
    }
}
