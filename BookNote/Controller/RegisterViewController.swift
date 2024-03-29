//
//  RegisterViewController.swift
//  BookNote
//
//  Created by Ramazan Abdullayev on 9/15/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var register: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
        
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        
        
        
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        
        
    }
    
    func setUpElements() {
        
        Utilities.styleTextField(nameTextField)
        Utilities.styleTextField(surnameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        nameTextField.resignFirstResponder()
        surnameTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
        return true
        
    }
    
}
