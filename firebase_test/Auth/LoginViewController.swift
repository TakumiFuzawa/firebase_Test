//
//  LoginViewController.swift
//  firebase_test
//
//  Created by Takumi Fuzawa on 2020/03/24.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class LoginViewController: BaseViewController {
    
    var userModel: UserModel = UserModel()
    
    @IBOutlet var mailTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBAction func touchedLoginButonn(_ sender: UIButton) {
        
        UserModel.signIn(email: mailTextField.text ?? "", pass: passTextField.text ?? "", failure: { (error) in
            print(error)
            print("fjeifjejfiejfeojfoefejioej")
        }) {
            print("ログインに成功しました")
        }
        
    }
    
    @IBAction func touchedNewSinupButton(_ sender: UIButton) {
        
        let vc = SinupViewController()
        transitionViewController(from: self, to: vc)
        
    }
}

// MARK: - Life cycle
extension LoginViewController {
    
}

// MARK: - Protocol
extension LoginViewController {
    
}

// MARK: - method
extension LoginViewController {
    
}

