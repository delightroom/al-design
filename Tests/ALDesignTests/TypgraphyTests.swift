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
        let font = lexend(.semiBold, ofSize: 11)
        XCTAssertNotNil(font)
    }
    
    func testNumberTypo() {
        let fonts = [lexend(.regular, ofSize: 110), lexend(.semiBold, ofSize: 48), lexend(.semiBold, ofSize:32), lexend(.semiBold, ofSize: 26), lexend(.semiBold, ofSize: 20)]

        let input = "123456789"
        let output = [input.font(.hero1).number(), input.font(.hero2).number(), input.font(.title1).number(), input.font(.title2).number(), input.font(.title3).number()]
        let correctOutput = fonts.map { NSAttributedString(string: input, attributes: [.font: $0, .foregroundColor: UIColor.surfaceHighEmphasis]) }

        XCTAssertEqual(output, correctOutput)
    }
    
    func testTextTypo() {
        let fonts: [UIFont] = [UIFont.systemFont(ofSize: 110), UIFont.systemFont(ofSize: 48, weight: .heavy), UIFont.systemFont(ofSize: 32, weight: .heavy), UIFont.systemFont(ofSize: 26, weight: .heavy), UIFont.systemFont(ofSize: 20, weight: .heavy), UIFont.systemFont(ofSize: 18, weight: .heavy), UIFont.systemFont(ofSize: 16), UIFont.systemFont(ofSize: 14, weight: .heavy), UIFont.systemFont(ofSize: 14), UIFont.systemFont(ofSize: 12, weight: .heavy), UIFont.systemFont(ofSize: 12)]

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
