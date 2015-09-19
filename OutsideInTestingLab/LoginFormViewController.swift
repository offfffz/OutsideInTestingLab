//
//  LoginFormViewController.swift
//  OutsideInTestingLab
//
//  Created by offz on 9/12/2558 BE.
//  Copyright © 2558 offz. All rights reserved.
//

import UIKit

class LoginFormViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var fieldEmail: UITextField!
    @IBOutlet weak var fieldPassword: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    
    // MARK: - private properties
    private var currentUser: User?
    private var formData: LoginForm {
        guard let email = fieldEmail.text, password = fieldPassword.text else {
            return LoginForm(email: "", password: "")
        }
        return LoginForm(email: email, password: password)
    }
    private lazy var authService: AuthorizationService = {
        return AuthorizationService()
    }()
    
    // MARK: - IBAction
    @IBAction func formChanged(sender: AnyObject) {
        buttonLogin.enabled = formData.valid
    }
    
    @IBAction func buttonLoginClicked(sender: AnyObject) {
        authService.login(formData) {[unowned self] user, error in
            self.currentUser = user
            self.performSegueWithIdentifier("WelcomeViewController", sender: nil)
        }
    }
    
    // MARK: - methods
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        clearForm()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let welcomePage = segue.destinationViewController as? WelcomeViewController else { return }
        welcomePage.currentUser = self.currentUser
    }
    
    private func clearForm() {
        fieldEmail.text = ""
        fieldPassword.text = ""
        buttonLogin.enabled = false
        currentUser = nil
    }
}

