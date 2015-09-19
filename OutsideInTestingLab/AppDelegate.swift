//
//  AppDelegate.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        if NSProcessInfo.processInfo().environment["animations"] == "0" {
            UIView.setAnimationsEnabled(false)
        }
        
        return true
    }


}

