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
        let correctOutput = fonts.map { NSAttributedString(string: input, attributes: [.font: $0, .foregroundColor: UIColor.onSurfaceHighEmphasis]) }

        XCTAssertEqual(output, correctOutput)
    }
    
    func testTextTypo() {
        let fonts: [(UIFont, CGFloat)] = [(UIFont.systemFont(ofSize: 110, weight: .heavy), 110), (UIFont.systemFont(ofSize: 48, weight: .heavy), 62), (UIFont.systemFont(ofSize: 32, weight: .heavy), 42), (UIFont.systemFont(ofSize: 26, weight: .heavy), 34), (UIFont.systemFont(ofSize: 20, weight: .heavy), 26), (UIFont.systemFont(ofSize: 17, weight: .heavy), 24), (UIFont.systemFont(ofSize: 16), 22), (UIFont.systemFont(ofSize: 14, weight: .heavy), 20), (UIFont.systemFont(ofSize: 14), 20), (UIFont.systemFont(ofSize: 12, weight: .heavy), 18), (UIFont.systemFont(ofSize: 12), 18)]

        let input = "Good Morning"
        let output = [input.text(.hero1), input.text(.hero2), input.text(.title1), input.text(.title2), input.text(.title3), input.text(.button), input.text(.paragraph), input.text(.overline), input.text(.caption1), input.text(.caption2), input.text(.caption3)]
        
        let correctOutput: [NSAttributedString] = fonts.map {
            let lineHeight: CGFloat = $1
            let style = NSMutableParagraphStyle()
            style.maximumLineHeight = lineHeight
            style.minimumLineHeight = lineHeight
            return NSAttributedString(string: input, attributes: [.font: $0, .foregroundColor: UIColor.onSurfaceHighEmphasis, .paragraphStyle: style, .baselineOffset: (lineHeight - $0.lineHeight) / 2])
        }

        XCTAssertEqual(output, correctOutput)
    }
    
    func testTypoWithAddColor() {
        let input = "Hello ALDesign".number(.title1).addColor(UIColor.onSurfaceMediumEmphasis)
        let output = input.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor
        let correctOutput = UIColor.onSurfaceMediumEmphasis
        
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
        let input = "Hello ALDesign".number(.title1).addColor(UIColor.onSurfaceMediumEmphasis).addAlignment(.center)
        let output = [input.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor, input.attribute(.paragraphStyle, at: 0, effectiveRange: nil) as? NSMutableParagraphStyle]
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        let correctOutput = [UIColor.onSurfaceMediumEmphasis, paragraphStyle]
        
        XCTAssertNotNil(output)
        XCTAssertEqual(output, correctOutput)
    }
}
