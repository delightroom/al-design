    import XCTest
    @testable import ALDesign

    final class ALDesignTests: XCTestCase {
        func testTypography() {
            let font = UIFont.systemFont(ofSize: 110, weight: .heavy)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.ALColor.onSurfaceHighEmphasis]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero, testString)
        }
        
        func testTypographyTwo() {
            let font = UIFont.systemFont(ofSize: 48, weight: .heavy)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.ALColor.onSurfaceHighEmphasis]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.two, testString)
        }
        
        func testTypographyThree() {
            let font = UIFont.systemFont(ofSize: 12)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.ALColor.onSurfaceHighEmphasis]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".caption.three, testString)
        }
        
        func testTypographyAddColor() {
            let font = UIFont.systemFont(ofSize: 110, weight: .heavy)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.ALColor.onSurfaceHighEmphasis]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.addColor(.ALColor.onSurfaceHighEmphasis), testString)
        }
        
        func testTypographyAddAlignment() {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .left
            let font = UIFont.systemFont(ofSize: 110, weight: .heavy)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.ALColor.onSurfaceHighEmphasis, .paragraphStyle: paragraphStyle]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.addAlignment(.left), testString)
        }
        
        func testTypographyAddColorAndAlignment() {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .left
            let font = UIFont.systemFont(ofSize: 110, weight: .heavy)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor.ALColor.onSurfaceHighEmphasis, .paragraphStyle: paragraphStyle]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.addColor(.ALColor.onSurfaceHighEmphasis).addAlignment(.left), testString)
        }
        
        func testTypographyAddUIColor() {
            let font = UIFont.systemFont(ofSize: 110, weight: .heavy)
            let attributes: [NSAttributedString.Key: Any] = [.font: font, .foregroundColor: UIColor(hexString: "#123456")]
            let testString = NSAttributedString(string: "Test", attributes: attributes)
            
            XCTAssertEqual("Test".hero.addColor(UIColor(hexString: "#123456")), testString)
        }
        
        func testColors() {
            let testColor = UIColor(hexString: "#F5F9FF")
            XCTAssertEqual(UIColor.ALColor.background, testColor)
        }
        
        func testIcons() {
            let sleepFilled = NaviIcon.sleep.filled
            XCTAssertNotNil(sleepFilled)
            XCTAssertEqual(CGSize(width: 24, height: 24), sleepFilled.size)   
        }
    }
