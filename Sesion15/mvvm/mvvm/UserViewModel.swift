//
//  PerfilViewModel.swift
//  mvvm
//
//  Created by Kenyi Rodriguez on 4/12/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class UserViewModel {
    
    var nombreCompleto: String {
        return "\(self.alumno.nombre) \(self.alumno.apellido)"
    }
    
    var nombreCompletoAttributo: NSAttributedString {
        
        let attributos = NSMutableAttributedString()
        attributos.append(self.attributoNombre)
        attributos.append(NSAttributedString(string: " - "))
        attributos.append(self.attributoApellido)
        
        return attributos
    }
    
    private var attributoApellido: NSAttributedString {
        
        let attributos: [NSAttributedString.Key : Any] = [.font               : UIFont.boldSystemFont(ofSize: 50),
                                                          .foregroundColor    : UIColor.black,
                                                          .strokeColor        : UIColor.red,
                                                          .strokeWidth        : 3,
                                                          .backgroundColor    : UIColor.blue]
        
        return NSAttributedString(string: self.alumno.apellido, attributes: attributos)
    }
    
    private var attributoNombre: NSAttributedString {
        
        let attributos: [NSAttributedString.Key : Any] = [.font               : UIFont.italicSystemFont(ofSize: 40),
                                                          .foregroundColor    : UIColor.red,
                                                          .strokeColor        : UIColor.blue,
                                                          .strokeWidth        : 3,
                                                          .underlineStyle     : true,
                                                          .underlineColor     : UIColor.green]
        
        return NSAttributedString(string: self.alumno.nombre, attributes: attributos)
    }
    
    private var alumno: AlumnoBE

    init(alumno: AlumnoBE) {
        self.alumno = alumno
    }
}
