//
//  WebServiceManager.swift
//  DemoServicios
//
//  Created by Kenyi Rodriguez on 20/11/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import Foundation

extension WebServiceManager {
    
    typealias JSON = [String: Any]
    typealias WebServiceResponse = (_ response: Any?) -> Void
    
    enum HTTPMethod: String {
        case get    = "GET"
        case post   = "POST"
        case put    = "PUT"
        case delete = "DELETE"
    }
}

class WebServiceManager {
    
    class func doRequest(_ requestMethod: HTTPMethod = .get, urlString: String, handler: @escaping WebServiceResponse) {
        
        let urlStringInternal = urlString.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed) ?? ""
        
        guard let url = URL(string: urlStringInternal) else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = requestMethod.rawValue
        
        let sessionConfiguration = URLSessionConfiguration.default
        sessionConfiguration.httpAdditionalHeaders = ["Content-Type": "application/json"]
        
        let session = URLSession(configuration: sessionConfiguration, delegate: nil, delegateQueue: nil)
        
        let dataTask = session.dataTask(with: request) { (data, urlResponse, error) in
            
            DispatchQueue.global(qos: .background).async {
                
                var response: Any?
                
                do {
                    response = try JSONSerialization.jsonObject(with: data ?? Data(), options: .allowFragments)
                }catch {
                    print("Error al intentar leer el jSON")
                }
                
                DispatchQueue.main.async {
                    handler(response)
                }
            }
        }
        
        dataTask.resume()
    }
}
