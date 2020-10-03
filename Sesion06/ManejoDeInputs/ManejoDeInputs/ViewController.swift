//
//  ViewController.swift
//  ManejoDeInputs
//
//  Created by Kenyi Rodriguez on 10/2/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName      : UITextField!
    @IBOutlet weak var txtDocument  : UITextField!
    
    @IBAction func tapToClodeKeyboard(_ sender: Any) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setStyleToTextField(self.txtName, ifIsSelect: false)
        self.setStyleToTextField(self.txtDocument, ifIsSelect: false)
    }
    
    func setStyleToTextField(_ textField: UITextField, ifIsSelect isSelect: Bool) {
        
        textField.backgroundColor = .white
        textField.layer.borderWidth = 1
        textField.layer.borderColor = isSelect ? UIColor.systemBlue.cgColor : UIColor.lightGray.cgColor
        textField.layer.cornerRadius = 10
        
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOffset = CGSize(width: 0, height: 0)
        textField.layer.shadowRadius = 2
        textField.layer.shadowOpacity = 0.2
        
    }
    
}

extension ViewController: UIScrollViewDelegate {
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.setStyleToTextField(textField, ifIsSelect: true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.setStyleToTextField(textField, ifIsSelect: false)
    }
}

