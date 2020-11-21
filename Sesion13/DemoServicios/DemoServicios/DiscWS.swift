//
//  DiscWS.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 20/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]

class DiscWS {
    
    typealias Discs = (_ arrayDisc: [DiscBE]) -> Void
        
    class func getAllDisc(success: @escaping Discs) {
        
        WebServiceManager.doRequest(urlString: "http://kenyirodriguez.com/discos.json") { (response) in
            
            let json = response as? JSON ?? [:]
            let products = json["productos"] as? JSON ?? [:]
            let arrayDiscWS = products["discos"] as? [JSON] ?? []
            
            var arrayDisc = [DiscBE]()
            
            for disc in arrayDiscWS {
                let discBE = DiscBE(json: disc)
                arrayDisc.append(discBE)
            }
            
            success(arrayDisc)
        }
    }
}
