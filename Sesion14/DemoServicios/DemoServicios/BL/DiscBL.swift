//
//  DiscBL.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 27/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import Foundation

class DiscBL {
    
    class func getAllDisc(success: @escaping Discs) {
        
        DiscWS.getAllDisc { (arrayDisc) in
            
            let arraySortDisc = arrayDisc.sorted(by: { $0.releaseDate > $1.releaseDate })
            success(arraySortDisc)
        }
    }
}
