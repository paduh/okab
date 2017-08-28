//
//  ChannelVC.swift
//  Okab
//
//  Created by Perfect Aduh on 26/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var logInButton: UIButton!
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed() {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
}
