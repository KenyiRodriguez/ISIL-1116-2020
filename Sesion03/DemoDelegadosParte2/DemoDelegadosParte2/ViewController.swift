//
//  ViewController.swift
//  DemoDelegadosParte2
//
//  Created by Kenyi Rodriguez on 9/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func clickBtnCreate(_ sender: Any) {
        
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        let posx = CGFloat.random(in: 0...width)
        let posy = CGFloat.random(in: 0...height)
        
        let frame = CGRect(x: posx, y: posy, width: 80, height: 80)
        let boxView = BoxView(frame: frame)
        boxView.delegate = self
        self.view.addSubview(boxView)
        boxView.changeRandomBackgroundColor()
    }
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
    }
}

extension ViewController: BoxViewDelegate {
    
    func boxViewTapInView(_ boxView: BoxView) {
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.2, options: .curveEaseOut, animations: {
            
            boxView.changeRandomBackgroundColor()
            boxView.changeRandomPosition()
            boxView.changeAngleRotation()
            
        }) { (_) in
            
            boxView.transform = .identity
        }
        
    }
}

