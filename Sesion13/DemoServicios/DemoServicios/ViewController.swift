//
//  ViewController.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 20/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        DiscWS.getAllDisc { (arrayDisc) in
            
            //TODO: Imprimir todos los discos
        }
    }
}

