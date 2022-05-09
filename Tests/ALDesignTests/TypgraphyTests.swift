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
        let font = lexendSemiBold(ofSize: 11)
        XCTAssertNotNil(font)
    }
    
    func testNumberTypo() {
        let fonts = [lexendSemiBold(ofSize: 110), lexendSemiBold(ofSize: 48), lexendSemiBold(ofSize:32), lexendSemiBold(ofSize: 26), lexendSemiBold(ofSize: 20)]

        let input = "123456789"
        let output = [input.number(.hero1), input.number(.hero2), input.number(.title1), input.number(.title2), input.number(.title3)]
        let correctOutput = fonts.map { NSAttributedString(string: input, attributes: [.font: $0, .foregroundColor: UIColor.surfaceHighEmphasis]) }

        XCTAssertEqual(output, correctOutput)
    }
    
    func testTextTypo() {
        let fonts: [UIFont] = [UIFont.systemFont(ofSize: 110, weight: .heavy), UIFont.systemFont(ofSize: 48, weight: .heavy), UIFont.systemFont(ofSize: 32, weight: .heavy), UIFont.systemFont(ofSize: 26, weight: .heavy), UIFont.systemFont(ofSize: 20, weight: .heavy), UIFont.systemFont(ofSize: 18, weight: .heavy), UIFont.systemFont(ofSize: 16), UIFont.systemFont(ofSize: 14, weight: .heavy), UIFont.systemFont(ofSize: 14), UIFont.systemFont(ofSize: 12, weight: .heavy), UIFont.systemFont(ofSize: 12)]

        let input = "Good Morning"
        let output = [input.text(.hero1), input.text(.hero2), input.text(.title1), input.text(.title2), input.text(.title3), input.text(.subtitle1), input.text(.paragraph), input.text(.overline), input.text(.caption1), input.text(.caption2), input.text(.caption3)]
        
        let correctOutput: [NSAttributedString] = fonts.map {
            return NSAttributedString(string: input, attributes: [.font: $0, .foregroundColor: UIColor.surfaceHighEmphasis])
        }

        XCTAssertEqual(output, correctOutput)
    }
    
    func testTypoWithAddColor() {
        let input = "Hello ALDesign".number(.title1).addColor(UIColor.surfaceMediumEmphasis)
        let output = input.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor
        let correctOutput = UIColor.surfaceMediumEmphasis
        
        XCTAssertNotNil(output)
        XCTAssertEqual(output, correctOutput)
    }
    
    func testTypoWithAddAlignment() {
        let input = "Hello ALDesign".number(.title1).addAlignment(.center)
        let output = input.attribute(.paragraphStyle, at: 0, effectiveRange: nil) as? NSMutableParagraphStyle
        let correctOutput = NSMutableParagraphStyle()
        correctOutput.alignment = .center
        
        XCTAssertNotNil(output)
        XCTAssertEqual(output, correctOutput)
    }
    
    func testTypoWithAddColorAndAddAlignment() {
        let input = "Hello ALDesign".number(.title1).addColor(UIColor.surfaceMediumEmphasis).addAlignment(.center)
        let output = [input.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor, input.attribute(.paragraphStyle, at: 0, effectiveRange: nil) as? NSMutableParagraphStyle]
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        let correctOutput = [UIColor.surfaceMediumEmphasis, paragraphStyle]
        
        XCTAssertNotNil(output)
        XCTAssertEqual(output, correctOutput)
    }
}
