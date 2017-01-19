//
//  ChangRobertsTests.swift
//  ChangRoberts
//
//  Created by Roman Roibu on 19/01/2017.
//  Copyright © 2017 Roman Roibu. All rights reserved.
//

import XCTest
@testable import ChangRoberts

class ChangRobertsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //// XCTAssertEqual(ChangRoberts().text, "Hello, World!")
    }
}

#if os(Linux)
extension ChangRobertsTests {
    static var allTests: [(String, (ChangRobertsTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
#endif
