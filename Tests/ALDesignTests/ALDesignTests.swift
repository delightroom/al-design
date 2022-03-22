    import XCTest
    @testable import ALDesign

    final class ALDesignTests: XCTestCase {
        
        func testColors() {
            let testColor = UIColor(hexString: "#F5F9FF")
            XCTAssertEqual(UIColor.backgroundv1, testColor)
        }
    }
