//
//  LoginViewController.swift
//  mvp
//
//  Created by Kenyi Rodriguez on 4/12/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtUser      : UITextField!
    @IBOutlet weak var txtPassword  : UITextField!
    @IBOutlet weak var loadingLogin : UIActivityIndicatorView!
    @IBOutlet weak var btnLogin     : UIButton!
    
    var presenter: LoginPresenter!
    
    @IBAction private func clickBtnLogin(_ sender: Any) {
        
        let user        = self.txtUser.text ?? ""
        let password    = self.txtPassword.text ?? ""
               
        self.presenter.doLoginWithUser(user, withPassword: password)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.presenter = LoginPresenter(controller: self)
    }
}


//MARK: - Habilidades
extension LoginViewController {
    
    func animateLoadingLogin(_ animate: Bool) {
        animate ? self.loadingLogin.startAnimating() : self.loadingLogin.stopAnimating()
    }
    
    func disableButtonLogin(_ disable: Bool) {
        self.btnLogin.alpha                     = disable ? 0.5 : 1
        self.btnLogin.isUserInteractionEnabled  = disable ? false : true
    }
}
