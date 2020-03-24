//
//  MyPageViewController.swift
//  firebase_test
//
//  Created by Takumi Fuzawa on 2020/03/24.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseAuth

// MARK: - Property
class MyPageViewController: BaseViewController {
    
    var userModel: UserModel = UserModel()
    
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var passwordLabel: UILabel!
    @IBAction func touchedEditButton(_ sender: UIButton) {
        let vc = MyPageSettingViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.userModel = self.userModel
        present(vc, animated: true, completion: nil)
    }
}

// MARK: - Life cycle
extension MyPageViewController {
    override func loadView() {
        super.loadView()
        UserModel.readMe { (userInfo) in
            self.userModel = userInfo
            self.mailLabel.text = userInfo.mail
            self.passwordLabel.text = userInfo.password
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //登録されてない場合はSinUpの画面に遷移する
        if Auth.auth().currentUser?.uid == nil{
            let vc = SinupViewController()
            transitionViewController(from: self, to: vc)
        }
    }
}

// MARK: - Protocol
extension MyPageViewController {
    
}

// MARK: - method
extension MyPageViewController {
    
}

