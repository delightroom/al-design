//
//  TypographyTests.swift
//  
//
//  Created by smis on 2021/12/07.
//

import XCTest
import ALDesign

final class TypographyTests: XCTestCase {
    func testlexend() {
        do {
            try registerFontIfNeeded()
            let font = UIFont(name: "Lexend-SemiBold", size: UIFont.labelFontSize)
            XCTAssertNotNil(font)
        } catch {
            dump(error)
            XCTFail()
        }
    }
    
    func testNumberHeroOne() {
        let font = UIFont.lexendSemiBold(ofSize: 110)
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.onSurfaceHighEmphasis]

        let input = "123456789"
        let output = input.number(.hero1)
        let correctOutput = NSAttributedString(string: input, attributes: attributes)

        XCTAssertEqual(output, correctOutput)
    }
}
