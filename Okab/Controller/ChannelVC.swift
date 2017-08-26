//
//  ChannelVC.swift
//  Okab
//
//  Created by Perfect Aduh on 26/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
