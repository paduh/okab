//
//  CreateAccountVC.swift
//  Okab
//
//  Created by Perfect Aduh on 28/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func closeButtonPressed() {
       performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func creatAccountButtonPressed() {
        
    }

}
