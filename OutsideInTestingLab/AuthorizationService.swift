//
//  AuthorizationService.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//



import Foundation

typealias LoginCallback = (user: User, error: NSError?) -> ()

class AuthorizationService {
    /*
        AuthorizationService เป็นคลาสสมมุติเท่านั้น
        คลาสนี้ควรทำหน้าที่เชื่อต่อ REST API เพื่อทำการ Login User เข้าสู่ระบบ
    */
    
    func login(loginForm: LoginForm, callback: LoginCallback) {
        let dispatchQ = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)
        dispatch_async(dispatchQ) {
            
            sleep(1)
            
            let user = User(email: loginForm.email, name: "otulp", id: 3)
            dispatch_async(dispatch_get_main_queue()) {
                callback(user: user, error: nil)
            }
        }
    }
    
}