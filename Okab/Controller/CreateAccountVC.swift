//
//  CreateAccountVC.swift
//  Okab
//
//  Created by Perfect Aduh on 28/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closeButtonPressed() {
       performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func creatAccountButtonPressed() {
        guard let email = emailTextField.text,  email != "" else { return }
        guard let pass = passwordTextField.text, pass != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if(success) {
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if(success) {
                        print("User login successfully, \(AuthService.instance.authToken)")
                    } else {
                        print("User login failed")
                    }
                })
            } else {
                print("User registration failed")
            }
        }
    }

}
