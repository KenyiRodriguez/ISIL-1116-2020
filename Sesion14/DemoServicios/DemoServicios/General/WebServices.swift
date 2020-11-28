//
//  WebServices.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 27/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import Foundation

struct WebServicesURL {
    
    static private var baseURL = "https://ipas-ios.s3.amazonaws.com/jsonTest/"
    
    static public var getAllDisc        = baseURL + "discos.json"
    static public var getAllProducts    = baseURL + "products.json"
}
