//
//  LoginUITests.swift
//  CatOnCloudUITests
//
//  Created by Qin Guan on 19/10/2017.
//  Copyright © 2017 GQ. All rights reserved.
//

import XCTest

class LoginUITests: XCTestCase {
        
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
        let userNameTextField = app.textFields["User Name"]
        userNameTextField.tap()
        userNameTextField.tap()
        userNameTextField.typeText("test")
        
        let passwordSecureTextField = app.secureTextFields["Password"]
        passwordSecureTextField.tap()
        passwordSecureTextField.tap()
        passwordSecureTextField.typeText("test")
        app/*@START_MENU_TOKEN@*/.buttons["Go"]/*[[".keyboards.buttons[\"Go\"]",".buttons[\"Go\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        
        let label = app.staticTexts["GQ"]
        
        XCTAssertEqual(label.label, "GQ")        
    }
    
}
