//
//  ContentBoxViewController.swift
//  AnimacionConstraints
//
//  Created by Kenyi Rodriguez on 9/25/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class ContentBoxViewController: UIViewController {

    @IBOutlet weak var constraintWidth: NSLayoutConstraint!
    @IBOutlet weak var constraintHeight: NSLayoutConstraint!
    
    @IBAction func clickBtnAnimate(_ sender: Any) {
        
        let height = CGFloat.random(in: 40...300)
        let width = CGFloat.random(in: 40...300)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.4, options: .curveEaseOut, animations: {
            
            self.constraintHeight.constant = height
            self.constraintWidth.constant = width
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
