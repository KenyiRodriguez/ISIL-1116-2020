//
//  LoginModel.swift
//  mvc
//
//  Created by Kenyi Rodriguez on 4/12/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import Foundation

typealias SuccessProccess = () -> Void
typealias ErrorProccess = (_ errorMessage: String) -> Void

class LoginModel {
    
    func doLoginWithUser(_ user: String, andPassword password: String, success: @escaping SuccessProccess, error: @escaping ErrorProccess) {
        
        if user.count == 0 {
            error("Ingrese un usuario válido")
        }else if password.count == 0 {
            error("Ingrese un password válido")
        }else {
            
            //TODO: Ejecutar llamada a servicio web
            //Simulo que el servicio se esta llamando
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                success()
            }
        }
    }
}
