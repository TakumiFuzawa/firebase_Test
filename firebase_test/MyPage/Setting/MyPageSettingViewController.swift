//
//  MyPageSettingViewController.swift
//  firebase_test
//
//  Created by Takumi Fuzawa on 2020/03/24.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class MyPageSettingViewController: BaseViewController {
    
    var userModel: UserModel = UserModel()
    
    @IBOutlet var mailTextField: UITextField!
    @IBOutlet var passTextField: UITextField!
    @IBAction func touchedDoneButton(_ sender: UIButton) {
        UserModel.update(request: userModel) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func touchedCancelButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func touchedLogoutButton(_ sender: UIButton) {
        UserModel.logOut {
            self.dismiss(animated: true, completion: nil)
        }
    }
    @IBAction func toucheddeleteButton(_ sender: UIButton) {
        UserModel.delete {
            self.dismiss(animated: true, completion: nil)
        }
    }
}

// MARK: - Life cycle
extension MyPageSettingViewController {
    override func loadView() {
        super.loadView()
        mailTextField.text = userModel.mail
        passTextField.text = userModel.password
        mailTextField.delegate = self
        passTextField.delegate = self
        //        UserModel.update(request: userModel) {
        //            self.userModel.mail = self.mailTextField.text
        //            self.userModel.password = self.passTextField.text
        //        }
    }
}

// MARK: - Protocol
extension MyPageSettingViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userModel.mail = mailTextField.text
        userModel.password = passTextField.text
        return true
    }
}

// MARK: - method
extension MyPageSettingViewController {
    
}

