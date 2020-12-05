//
//  LoginView.swift
//  mvc
//
//  Created by Kenyi Rodriguez on 4/12/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

protocol LoginViewDelegate {
    
    func loginView(_ view: LoginView, doLoginWithUser user: String, andPassword password: String)
}

class LoginView: UIView {
    
    @IBOutlet weak var txtUser      : UITextField!
    @IBOutlet weak var txtPassword  : UITextField!
    @IBOutlet weak var btnLogin     : UIButton!
    @IBOutlet weak var loadingLogin : UIActivityIndicatorView!
    
    var delegate: LoginViewDelegate?
    
    @IBAction private func clickBtnLogin(_ sender: Any) {
        
        self.delegate?.loginView(self, doLoginWithUser: self.txtUser.text ?? "", andPassword: self.txtPassword.text ?? "")
    }
    
    func animateLoadingLogin(_ animate: Bool) {
        animate ? self.loadingLogin.startAnimating() : self.loadingLogin.stopAnimating()
    }
    
    func disableButtonLogin(_ disable: Bool) {
        self.btnLogin.alpha                     = disable ? 0.5 : 1
        self.btnLogin.isUserInteractionEnabled  = disable ? false : true
    }
}
