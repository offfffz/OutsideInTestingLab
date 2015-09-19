//
//  LoginFormHelper.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//

import Foundation

struct LoginForm {
    let email: String
    let password: String
    
    var valid: Bool {
        let emailValid = email.isEmail
        let passwordValid = password.characters.count > 6
        
        return emailValid && passwordValid
    }
}