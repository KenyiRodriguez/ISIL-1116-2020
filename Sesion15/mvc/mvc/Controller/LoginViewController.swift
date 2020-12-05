//
//  ViewController.swift
//  mvc
//
//  Created by Kenyi Rodriguez on 4/12/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginView: LoginView!
    
    var loginModel = LoginModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginView.delegate = self
    }
}

extension LoginViewController: LoginViewDelegate {
    
    func loginView(_ view: LoginView, doLoginWithUser user: String, andPassword password: String) {
        
        view.animateLoadingLogin(true)
        view.disableButtonLogin(true)
        
        self.loginModel.doLoginWithUser(user, andPassword: password, success: {
            
            print("TODO CORRECTO!!!")
            view.animateLoadingLogin(false)
            view.disableButtonLogin(false)
            
        }) { (errorMessage) in
            
            print(errorMessage)
            view.animateLoadingLogin(false)
            view.disableButtonLogin(false)
        }
    }
}


