//
//  ViewController.swift
//  DemoTecladoObserver
//
//  Created by Kenyi Rodriguez on 9/4/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickBtnCloseKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification: Notification) {
        print("EL TECLADO APARECE")
        
        let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero
        let animationDuration = notification.userInfo?[UIResponder.keyboardAnimationDurationUserInfoKey] as? Double ?? 0
        
        print("El frame del taclado es: \(keyboardFrame)")
        print("La duración de la animación es: \(animationDuration)")
        
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        
        print("EL TECLADO DESAPARECE")
    }
}

