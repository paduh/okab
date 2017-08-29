//
//  RoundedButton.swift
//  Okab
//
//  Created by Perfect Aduh on 28/08/2017.
//  Copyright © 2017 Perfect Aduh. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setUpView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setUpView()
    }

    func setUpView() {
        self.layer.cornerRadius = cornerRadius
    }
}
