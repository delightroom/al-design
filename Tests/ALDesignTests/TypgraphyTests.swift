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
    
    func testTextTypo() {
        let fonts = [UIFont.systemFont(ofSize: 110, weight: .heavy), UIFont.systemFont(ofSize: 48, weight: .heavy), UIFont.systemFont(ofSize: 32, weight: .heavy), UIFont.systemFont(ofSize: 26, weight: .heavy), UIFont.systemFont(ofSize: 20, weight: .heavy), UIFont.systemFont(ofSize: 17, weight: .heavy), UIFont.systemFont(ofSize: 16), UIFont.systemFont(ofSize: 14, weight: .heavy), UIFont.systemFont(ofSize: 14), UIFont.systemFont(ofSize: 12, weight: .heavy), UIFont.systemFont(ofSize: 12)]

        let input = "Good Morning"
        let output = [input.text(.hero1), input.text(.hero2), input.text(.title1), input.text(.title2), input.text(.title3), input.text(.button), input.text(.paragraph), input.text(.overline), input.text(.caption1), input.text(.caption2), input.text(.caption3)]
        let correctOutput = fonts.map { NSAttributedString(string: input, attributes: [.font: $0, .foregroundColor: UIColor.onSurfaceHighEmphasis]) }

        XCTAssertEqual(output, correctOutput)
    }
}
