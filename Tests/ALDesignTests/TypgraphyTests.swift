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
    
    func testNumberTypo() {
        let fonts = [lexendSemiBold(ofSize: 110), lexendSemiBold(ofSize: 48), lexendSemiBold(ofSize:32), lexendSemiBold(ofSize: 26), lexendSemiBold(ofSize: 20)]

        let input = "123456789"
        let output = [input.number(.hero1), input.number(.hero2), input.number(.title1), input.number(.title2), input.number(.title3)]
        let correctOutput = fonts.map { NSAttributedString(string: input, attributes: [.font: $0, .foregroundColor: UIColor.onSurfaceHighEmphasis]) }

        XCTAssertEqual(output, correctOutput)
    }
}
