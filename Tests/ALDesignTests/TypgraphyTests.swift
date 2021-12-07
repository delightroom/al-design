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
        let font = lexendSemiBold(ofSize: 11)
        XCTAssertNotNil(font)
    }
    
    func testNumberHeroOne() {
        let font = lexendSemiBold(ofSize: 110)
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.onSurfaceHighEmphasis]

        let input = "123456789"
        let output = input.number(.hero1)
        let correctOutput = NSAttributedString(string: input, attributes: attributes)

        XCTAssertEqual(output, correctOutput)
    }
    
    func testNumberHeroTwo() {
        let font = lexendSemiBold(ofSize: 48)
        let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.onSurfaceHighEmphasis]

        let input = "123456789"
        let output = input.number(.hero2)
        let correctOutput = NSAttributedString(string: input, attributes: attributes)

        XCTAssertEqual(output, correctOutput)
    }
}
