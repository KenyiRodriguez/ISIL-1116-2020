//
//  ViewController.swift
//  DescargaDeImagenes
//
//  Created by Kenyi Rodriguez on 11/6/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgEjemplo: UIImageView!
    @IBOutlet weak var imgEjemplo2: UIImageView!
    @IBOutlet weak var imgEjemplo3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let urlImagenString = "https://c4.wallpaperflare.com/wallpaper/11/975/591/band-music-pantera-heavy-metal-thrash-metal-wallpaper-preview.jpg"
        
        self.imgEjemplo.downloadImageInURLString(urlImagenString)
        self.imgEjemplo2.downloadImageInURLString("https://i.ytimg.com/vi/kpFwxJFYnOo/sddefault.jpg")
        self.imgEjemplo3.downloadImageInURLString("https://i.redd.it/lpf0u9nbj7w41.jpg")
    }
}

