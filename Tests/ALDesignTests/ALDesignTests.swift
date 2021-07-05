    import XCTest
    @testable import ALDesign

    final class ALDesignTests: XCTestCase {
        func testTypography() {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .left
            let font = UIFont.boldSystemFont(ofSize: 110)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: ALColor.onSurfaceHighEmphasis.color, .paragraphStyle: paragraphStyle]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".attributedString(type: .hero1), testString)
        }
        
        func testColors() {
            let testColor = UIColor(hexString: "#F5F9FF")
            XCTAssertEqual(ALColor.background.color, testColor)
        }
    }
