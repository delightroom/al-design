//
//  ALIconTests.swift
//  
//
//  Created by 이옥민 on 2022/06/20.
//

import XCTest
import ALDesign

final class ALIconTests: XCTestCase {
    func test_whenInitALIconLineIcon_isSameWithLineIcon() {
        let expectedValue = LineIcon().close2448
        let observedValue = ALIcon.line.close2448
        
        XCTAssertEqual(expectedValue, observedValue)
    }
}
