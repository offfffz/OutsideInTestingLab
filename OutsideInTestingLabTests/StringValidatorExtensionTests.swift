//
//  StringValidatorExtensionTests.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//

import XCTest
@testable import OutsideInTestingLab

class StringValidatorExtensionTests: XCTestCase {
    func testIsEmailWillBeTrueWhenTheStringIsValidEmail() {
        let email = "someone@gmail.com"
        
        XCTAssertTrue(email.isEmail, "isEmail should be true with email:\(email)")
    }
}
