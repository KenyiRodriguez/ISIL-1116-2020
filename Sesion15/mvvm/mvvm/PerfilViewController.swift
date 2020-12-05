//
//  PerfilViewController.swift
//  mvvm
//
//  Created by Kenyi Rodriguez on 4/12/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {
    
    @IBOutlet weak var lblNombreCompleto1: UILabel!
    @IBOutlet weak var lblNombreCompleto2: UILabel!
    
    let viewModel = UserViewModel(alumno: AlumnoBE(nombre: "kenyi", apellido: "Rodriguez"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblNombreCompleto1.text            = self.viewModel.nombreCompleto
        self.lblNombreCompleto2.attributedText  = self.viewModel.nombreCompletoAttributo
        
    }
}
