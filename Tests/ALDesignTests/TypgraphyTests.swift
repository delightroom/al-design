//
//  TypographyTests.swift
//  
//
//  Created by smis on 2021/12/07.
//

import XCTest
@testable import ALDesign

final class TypographyTests: XCTestCase {
    func testlexend() {
        let fontToRegister = [
              FontNameExt(name: "Lexend-SemiBold", ext: "ttf"),
            ]
        do {
            try autoRegisteringFont(fontToRegister, "ALDesign")
            let font = UIFont(name: "Lexend-SemiBold", size: UIFont.labelFontSize)
            XCTAssertNotNil(font)
        } catch {
            dump(error)
            XCTFail()
        }
    }
    
    func testNumberHeroOne() {
        let fontToRegister = [
              FontNameExt(name: "Lexend-SemiBold", ext: "ttf"),
            ]
        do {
            try autoRegisteringFont(fontToRegister, "ALDesign")
        } catch {
            dump(error)
            XCTFail()
        }
        let font = UIFont.systemFont(ofSize: 110, weight: .heavy)
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.onSurfaceHighEmphasis]

        let input = "123456789"
        let output = input.number(.hero1)
        let correctOutput = NSAttributedString(string: input, attributes: attributes)

        XCTAssertEqual(output, correctOutput)
    }
}

extension String {
    func number(_ typo: Typography) -> NSAttributedString {
        let result: NSAttributedString
        let font: UIFont = UIFont.lexendSemiBold(ofSize: 110)
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.onSurfaceHighEmphasis]
        result = NSAttributedString(string: self, attributes: attributes)
        return result
    }
}

extension UIFont {
    static func lexendSemiBold(ofSize size: CGFloat) -> UIFont {
        guard let result = UIFont(name: "Lexend-SemiBold", size: size) else { return UIFont.systemFont(ofSize: size, weight: .heavy) }
        return result
    }
}