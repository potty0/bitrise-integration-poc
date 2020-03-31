//
//  bitrise_integration_pocUITests.swift
//  bitrise-integration-pocUITests
//
//  Created by Peter Balint on 2020. 03. 30..
//  Copyright © 2020. Peter Balint. All rights reserved.
//

import XCTest

class bitrise_integration_pocUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFirstDeveloperSelectionWithButtonPress() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        XCUIApplication().tabBars.buttons["Second"].tap()
        
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Mobile developer #1"]/*[[".cells[\"Mobile developer #1, iOS expert\"].staticTexts[\"Mobile developer #1\"]",".staticTexts[\"Mobile developer #1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Press me!"].tap()
        
        let title = XCUIApplication()/*@START_MENU_TOKEN@*/.staticTexts["infoLabel"]/*[[".staticTexts[\"Button not pressed yet!\"]",".staticTexts[\"infoLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.label
        XCTAssert(title == "Pressed!", "Failed to detect pressed state.")
    }

//    func testLaunchPerformance() {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
