//
//  DiscWS.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 20/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import Foundation

class DiscWS {

    class func getAllDisc(success: @escaping Discs) {
    
        WebServiceManager.doRequest(urlString: WebServicesURL.getAllDisc) { (response) in
            
            let json = response as? WebServiceManager.JSON ?? [:]
            let products = json["productos"] as? WebServiceManager.JSON ?? [:]
            let arrayDiscWS = products["discos"] as? [WebServiceManager.JSON] ?? []
            
            var arrayDisc = [DiscBE]()
            
            for disc in arrayDiscWS {
                let discBE = DiscBE(json: disc)
                arrayDisc.append(discBE)
                arrayDisc.append(discBE)
                arrayDisc.append(discBE)
            }
            
            success(arrayDisc)
        }
    }
}
