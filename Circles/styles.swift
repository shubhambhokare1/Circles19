//
//  styles.swift
//  Covicle
//
//  Created by Shubham Bhokare on 6/21/20.
//  Copyright © 2020 Shubham Bhokare. All rights reserved.
//

import Foundation
import UIKit

class styles{
    static func styleBut(_ button:UIButton){
        
        button.backgroundColor = UIColor.init(red: 0/255, green:165/255, blue: 255/255, alpha: 1)
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.setTitleColor(.white, for: .normal)
        
    }
    
    static func styleTF(_ TF:UITextField){
        
        TF.layer.cornerRadius = 15
        TF.font = UIFont.boldSystemFont(ofSize: 20)
        
    }
}
