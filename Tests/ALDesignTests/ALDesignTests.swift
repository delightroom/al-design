    import XCTest
    @testable import ALDesign

    final class ALDesignTests: XCTestCase {
        func testTypography() {
            let font = UIFont.boldSystemFont(ofSize: 110)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: ALColor.onSurfaceHighEmphasis.color]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero, testString)
        }
        
        func testTypographyAddColor() {
            let font = UIFont.boldSystemFont(ofSize: 110)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: ALColor.onSurfaceHighEmphasis.color]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.addColor(.onSurfaceHighEmphasis), testString)
        }
        
        func testTypographyAddAlignment() {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .left
            let font = UIFont.boldSystemFont(ofSize: 110)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: ALColor.onSurfaceHighEmphasis.color, .paragraphStyle: paragraphStyle]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.addAlignment(.left), testString)
        }
        
        func testTypographyAddColorAndAlignment() {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .left
            let font = UIFont.boldSystemFont(ofSize: 110)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: ALColor.appBar.color, .paragraphStyle: paragraphStyle]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.addColor(.appBar).addAlignment(.left), testString)
        }
        
        func testColors() {
            let testColor = UIColor(hexString: "#F5F9FF")
            XCTAssertEqual(ALColor.background.color, testColor)
        }
    }
