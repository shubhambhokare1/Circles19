//
//  ViewController.swift
//  Circles
//
//  Created by Shubham Bhokare on 6/21/20.
//  Copyright © 2020 Shubham Bhokare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        styles.styleBut(loginButton)
        styles.styleBut(signUpButton)
    }
}

