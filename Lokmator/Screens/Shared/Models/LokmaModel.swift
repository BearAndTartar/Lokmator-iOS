//
//  LokmaModel.swift
//  Lokmator
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import ObjectMapper
import UIKit

class LokmaModel: LTModel, Mappable {

    var place: String!
    var years: Int!
    var location: LocationModel?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        place <- map["place"]
        years <- map["years"]
        location <- map["location"]
    }
}
