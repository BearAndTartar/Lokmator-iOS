//
//  ZORHTTPClient.swift
//  MvvmStarterSwiftProject
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper
import UIKit

class LTHTTPClient: NSObject {
    
    let baseURL = "http://www.mocky.io/v2"
    
    func get(withPath path: String, dataResponseModel responseModel:Any)/* -> AnyObject*/ {
        
//        let URL = String(format: "%@%@", arguments: [self.baseURL, path])

    }
    
    func post(withPath path: String, parameterModel model: AnyObject) /*-> AnyObject*/ {
        
        
        //return nil
    }

}
