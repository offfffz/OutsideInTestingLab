//
//  LoginFormValidatorTests.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//
import XCTest
@testable import OutsideInTestingLab

class LoginFormTests: XCTestCase {
    
    func testValidatePassWhenEmailAndPasswordAreCorrect() {
        let email = "someone@somewhere.com"
        let password = "1234567890"
        
        let form = LoginForm(email: email, password: password)
        
        XCTAssertTrue(form.valid, "Validation with email:\(email) password:\(password) shoud be valid")
    }
    
    func testValidateFailedWhenPasswordIsTooShort() {
        let email = "someone@somewhere.com"
        let password = "123"
        
        let form = LoginForm(email: email, password: password)
        
        XCTAssertFalse(form.valid, "Validation with short passwrod:\(password) should not be valid")
    }
}
