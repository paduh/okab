//
//  ChatVC.swift
//  Okab
//
//  Created by Perfect Aduh on 26/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //IBOutlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())

    }



}
