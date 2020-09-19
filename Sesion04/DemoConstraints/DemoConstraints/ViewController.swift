//
//  ViewController.swift
//  DemoConstraints
//
//  Created by Kenyi Rodriguez on 9/18/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var constraintTop: NSLayoutConstraint!
    
    @IBAction func clickBtnAnimar(_ sender: Any) {
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.3, options: .curveEaseOut) {
            self.constraintTop.constant = 200
            self.view.layoutIfNeeded()
        } completion: { (_) in
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

