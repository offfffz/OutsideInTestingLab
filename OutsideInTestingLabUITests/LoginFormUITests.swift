//
//  LoginFormUITests.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//

import XCTest

class LoginFormUITests: XCTestCase {
    
    let app = XCUIApplication()
    var launched = false
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false // When the test fails, stop testing
        launchIfNecessary()
    }
    
    func testLoginButtonEnableWhenEamilAndPasswordAreValid() {
        let email = "john@apple.com"
        let password = "1234567890"
        let buttonLogin = app.buttons["ButtonLogIn"]
        
        XCTAssertFalse(buttonLogin.enabled, "Button Login should be disable at first")
        
        fillForm(email: email, password: password)
        
        XCTAssertTrue(buttonLogin.enabled, "Button Login should be enabled with email:\(email) and password:\(password)")
    }
    
    func testWelcomePageWillShowWhenLoginSuccess() {
        let email = "john@apple.com"
        let password = "1234567890"
        let buttonLogin = app.buttons["ButtonLogIn"]
        
        fillForm(email: email, password: password)
        
        buttonLogin.tap()

        XCTAssertEqual(app.staticTexts["LabelEmail"].label, email, "Welcome page should show \(email)")
    }
    
    private func launchIfNecessary() {
        if !launched {
            app.launchEnvironment = ["animations": "0"]
            app.launch() // Start the application
            launched = true
        }
    }
    
    private func fillForm(email email: String, password: String) {
        let fieldEmail = app.textFields["FieldEmail"]
        let fieldPassword = app.secureTextFields["FieldPassword"]
        
        fieldEmail.tap()
        fieldEmail.typeText(email)
        fieldPassword.tap()
        fieldPassword.typeText(password)
    }

}
