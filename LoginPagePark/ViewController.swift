//
//  ViewController.swift
//  LoginPagePark
//
//  Created by Park Tae Hyun on 2018. 3. 5..
//  Copyright © 2018년 Tae hyun Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    var a: String?
    var b: String?
    
    @IBOutlet weak var deviloperLogo: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var idTextField: UITextField!
    
    
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBAction func logInButton(_ sender: UIButton) {
        let printid = idTextField.text
        a = printid
        print(a!)
        
        
        let printpw = passwordTextField.text
        b = printpw
        print(b!)
    }
    
    
    @IBAction func makeAccount(_ sender: Any) {
        let makeAccountView = self.storyboard!.instantiateViewController(withIdentifier: "makeAccountView")
        present(makeAccountView, animated: true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.delegate = self
        passwordTextField.delegate = self
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        idTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    
    
    /*
    override func viewDidLayoutSubviews() {
        self.deviloperLogo.sizeToFit()
    }
    */
}

