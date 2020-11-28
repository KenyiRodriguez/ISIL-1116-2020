//
//  DiscBE.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 20/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import Foundation

class DiscBE {
    
    var name            : String
    var author          : String
    var releaseDate     : Int
    var genre           : String
    var urlImage        : String
    var price           : String
    var textDescription : String
    var company         : String
    
    init(json: WebServiceManager.JSON) {
        
        self.name               = json["nombre"]        as? String ?? ""
        self.author             = json["autor"]         as? String ?? ""
        self.releaseDate        = json["publicacion"]   as? Int ?? 0
        self.genre              = json["genero"]        as? String ?? ""
        self.urlImage           = json["urlImagen"]     as? String ?? ""
        self.price              = json["precio"]        as? String ?? ""
        self.textDescription    = json["descripcion"]   as? String ?? ""
        self.company            = json["discografica"]  as? String ?? ""
    }
}
