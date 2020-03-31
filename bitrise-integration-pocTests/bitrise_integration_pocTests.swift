//
//  bitrise_integration_pocTests.swift
//  bitrise-integration-pocTests
//
//  Created by Peter Balint on 2020. 03. 30..
//  Copyright © 2020. Peter Balint. All rights reserved.
//

import XCTest
@testable import bitrise_integration_poc

class bitrise_integration_pocTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSimpleTitleComparison() {
        let firstTitle = "First"
        let secondTitle = "Second"
        
        XCTAssert(firstTitle != secondTitle)
    }
    
    func testDownloadingAppleCom() {
        let expectation = XCTestExpectation(description: "Download apple.com home page")
        
        let url = URL(string: "https://apple.com")!
        let dataTask = URLSession.shared.dataTask(with: url) { (data, _, _) in
            XCTAssertNotNil(data, "No data was downloaded.")
            expectation.fulfill()    
        }
        
        dataTask.resume()
        
        wait(for: [expectation], timeout: 10.0)
    }

//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
}
