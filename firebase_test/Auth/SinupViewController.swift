//
//  SinupViewController.swift
//  firebase_test
//
//  Created by Takumi Fuzawa on 2020/03/24.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class SinupViewController: BaseViewController {
    
    var userModel: UserModel = UserModel()
    
    @IBOutlet var mailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBAction func touchedSinupButton(_ sender: UIButton) {
        
        userModel.mail = mailTextField.text
        userModel.password = passwordTextField.text
        UserModel.create(request: userModel, success: {
            print("成功しました")
        }) { (error) in
            print(error)
        }
    }
    @IBAction func touchedLoginButton(_ sender: UIButton) {
        
        let vc = LoginViewController()
        transitionViewController(from: self, to: vc)
        
    }
    
}

// MARK: - Life cycle
extension SinupViewController {
    
}

// MARK: - Protocol
extension SinupViewController {
    
}

// MARK: - method
extension SinupViewController {
    
}

