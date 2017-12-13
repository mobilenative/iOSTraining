//
//  QuickDemoUITests.swift
//  QuickDemoUITests
//
//  Created by Songbai Yan on 14/10/2017.
//  Copyright © 2017 Songbai Yan. All rights reserved.
//

import XCTest

class QuickDemoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let tapButton = app.buttons["tap"]
        tapButton.tap()
        tapButton.tap()
        app.staticTexts["2"].tap()
        app.otherElements.containing(.staticText, identifier:"2").element.tap()
        
    }
    
}
