//
//  WelcomeViewController.swift
//  BookNote
//
//  Created by Ramazan Abdullayev on 9/15/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var register: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        login.layer.borderWidth = 0.5
        login.layer.borderColor = UIColor.lightGray.cgColor
        register.layer.borderWidth = 0.5
        register.layer.borderColor = UIColor.lightGray.cgColor
    
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        
        
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        
        
    }
    
}
