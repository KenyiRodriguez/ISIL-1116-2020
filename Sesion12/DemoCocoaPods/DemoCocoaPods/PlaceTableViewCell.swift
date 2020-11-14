//
//  PlaceTableViewCell.swift
//  DemoCocoaPods
//
//  Created by Kenyi Rodriguez on 10/30/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {
    
    @IBOutlet weak private var imgPlace     : UIImageView!
    @IBOutlet weak private var lblName      : UILabel!
    @IBOutlet weak private var lblAddress   : UILabel!
    
    public var objPlace: PlaceBE! {
        didSet {
            self.updateData()
        }
    }
    
    
    private func updateData() {
        
        self.lblName.text       = self.objPlace.place_name
        self.lblAddress.text    = self.objPlace.place_address
        
        self.imgPlace.downloadImageInURLString(self.objPlace.place_urlImage) { (image, urlString) in
            
            if self.objPlace.place_urlImage == urlString {
                
                self.imgPlace.image = image
                
                if let imageSize = image?.size {

                    let imageViewRatio = self.imgPlace.frame.height / self.imgPlace.frame.width
                    let imageRatio = imageSize.height / imageSize.width
                    
                    print("RatioImagen: \(imageViewRatio)")
                    print(imageRatio)
                    
                    self.imgPlace.contentMode = imageRatio > imageViewRatio ? .scaleAspectFit : .scaleAspectFill
                }
            }
        }
    }
    
    override func draw(_ rect: CGRect) {
        
        self.imgPlace.layer.cornerRadius = 20
    }
}

/*
 
 A
 B
 C
 D
 
 */
