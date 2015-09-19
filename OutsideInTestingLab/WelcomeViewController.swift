//
//  WelcomeViewController.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/13/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var labelEmail: UILabel!
    
    var currentUser: User?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        labelEmail.text = currentUser?.email
    }
}
