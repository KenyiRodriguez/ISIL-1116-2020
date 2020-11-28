//
//  DiscCollectionViewCell.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 27/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class DiscCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgDisc: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    var objDisc: DiscBE! {
        didSet { self.updateData() }
    }
    
    private func updateData() {
        //Meteora (2003)
        self.lblName.text = "\(self.objDisc.name) (\(self.objDisc.releaseDate))"
        
        self.imgDisc.downloadImageInURLString(self.objDisc.urlImage, placeHolderImage: nil) { (image, urlImage) in
            if self.objDisc.urlImage == urlImage {
                self.imgDisc.image = image
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        
        self.imgDisc.layer.cornerRadius             = 10
        self.imgDisc.superview?.layer.shadowColor   = UIColor.black.cgColor
        self.imgDisc.superview?.layer.shadowOffset  = .zero
        self.imgDisc.superview?.layer.shadowRadius  = 3
        self.imgDisc.superview?.layer.shadowOpacity = 1
        self.imgDisc.superview?.layer.masksToBounds = false
        
        self.transform = CGAffineTransform(translationX: 0, y: 50).scaledBy(x: 0.8, y: 0.8)
        self.alpha = 0
        
        let randomDelay = Double.random(in: 0...0.6)
        
        UIView.animate(withDuration: 0.6, delay: randomDelay, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.4, options: .curveEaseOut, animations: {
            
            self.transform = .identity
            self.alpha = 1
            
        }, completion: nil)
    }
}
