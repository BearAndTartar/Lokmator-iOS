//
//  MainService.swift
//  MvvmStarterSwiftProject
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

class MainService: LTService {

    struct MainServicePathConstants {
        static let Lokma = "/5929fde4110000eb04082962"
        static let User = "/592a1abf110000800508297b"
    }
    
    func getLokmas() -> [LokmaModel] {
        
        let URL = String(format: "%@%@", arguments: [self.baseURL, MainServicePathConstants.Lokma])
        
        var lokmas: [LokmaModel]! = []
        
        Alamofire.request(URL).responseArray { (response: DataResponse<[LokmaModel]>) in
            
            lokmas = response.result.value
            
            if let lokmas = lokmas {
                for lokma in lokmas {
                    print(lokma.place)
                    print(lokma.years)
                    print(lokma.location!)
                }
            }
        }
        
        return lokmas
    }
}
