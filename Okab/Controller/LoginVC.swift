//
//  LoginVC.swift
//  Okab
//
//  Created by Perfect Aduh on 27/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
    @IBAction func closeButtonPressed() {
        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func toCreateAccountVC() {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }

}
