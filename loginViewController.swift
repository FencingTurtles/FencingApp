//
//  loginViewController.swift
//  Fencing Main
//
//  Created by Coding on 12/1/19.
//  Copyright © 2019 Trevor & Kian. All rights reserved.
//

import UIKit

class loginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func UserLoginButton(_ sender: Any) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        if (username == "" || password == "") {
            let alertController = UIAlertController(title: "Error", message:"Please fill in both fields.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
            self.present(alertController, animated: true, completion: nil)
            return
        }
        //should send get request here -- if successful, segue to next screen (menuViewController)
    }
}

