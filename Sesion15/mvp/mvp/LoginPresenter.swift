//
//  LoginPresenter.swift
//  mvp
//
//  Created by Kenyi Rodriguez on 4/12/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class LoginPresenter {
    
    private weak var controller: LoginViewController?
    private var model = LoginModel()
    
    init(controller: LoginViewController) {
        self.controller = controller
    }
    
    func doLoginWithUser(_ user: String, withPassword password: String) {
        
        self.controller?.animateLoadingLogin(true)
        self.controller?.disableButtonLogin(true)
        
        self.model.doLoginWithUser(user, andPassword: password, success: {
            
            self.controller?.animateLoadingLogin(false)
            self.controller?.disableButtonLogin(false)
            
            print("TODO BIEN!!")
            
        }) { (errorMessage) in
            
            self.controller?.animateLoadingLogin(false)
            self.controller?.disableButtonLogin(false)
            
            print(errorMessage)
        }
    }
}
