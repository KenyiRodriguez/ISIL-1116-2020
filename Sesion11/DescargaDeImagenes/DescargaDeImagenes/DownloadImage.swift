//
//  DownloadImage.swift
//  DescargaDeImagenes
//
//  Created by Kenyi Rodriguez on 11/6/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func downloadImageInURLString(_ urlString: String) {
    
        guard let urlImage = URL(string: urlString) else {
            print("La url no es válida")
            return
        }
    
        DispatchQueue.global(qos: .default).async {
            
            var imageData: Data!
            
            do {
                imageData = try Data(contentsOf: urlImage)
            }catch {
                print("Se produjo un error")
            }
            
            let imagenDownloaded = UIImage(data: imageData)
            
            DispatchQueue.main.async {
                self.image = imagenDownloaded
            }
        }
    }
}
