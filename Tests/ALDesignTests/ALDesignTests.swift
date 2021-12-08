    import XCTest
    @testable import ALDesign

    final class ALDesignTests: XCTestCase {
        
        func testColors() {
            let testColor = UIColor(hexString: "#F5F9FF")
            XCTAssertEqual(UIColor.background, testColor)
        }
        
        func testIcons() {
            let sleepFilled = NaviIcon.sleep.filled
            XCTAssertNotNil(sleepFilled)
            XCTAssertEqual(CGSize(width: 24, height: 24), sleepFilled.size)   
        }
    }
