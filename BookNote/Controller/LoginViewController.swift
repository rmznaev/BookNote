//
//  LoginViewController.swift
//  BookNote
//
//  Created by Ramazan Abdullayev on 9/15/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
        
        changeButtonColor()
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        
        
        
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        
        
    }
    
    func setUpElements() {
        
        // Style the elements
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        
    }
    
    func changeButtonColor() {
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        return true
        
    }
    
}
