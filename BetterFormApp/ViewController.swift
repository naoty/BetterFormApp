//
//  ViewController.swift
//  BetterFormApp
//
//  Created by Naoto Kaneko on 2014/09/15.
//  Copyright (c) 2014年 Naoto Kaneko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var emailField: UITextField?
    @IBOutlet var passwordField: UITextField?
    @IBOutlet var loginButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login() {
        resignFirstResponderAtControls()
        println("Login")
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        resignFirstResponderAtControls()
    }
    
    private func resignFirstResponderAtControls() {
        emailField?.resignFirstResponder()
        passwordField?.resignFirstResponder()
    }
    
    // MARK: - UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if (textField == emailField) {
            passwordField?.becomeFirstResponder()
        } else {
            login()
        }
        
        return true
    }
}
