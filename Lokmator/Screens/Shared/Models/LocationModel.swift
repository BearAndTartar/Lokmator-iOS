//
//  LocationModel.swift
//  Lokmator
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import ObjectMapper
import UIKit


class LocationModel: LTModel, Mappable {

    var latitude: Double!
    var longitude: Double!
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        latitude <- map["latitude"]
        longitude <- map["longitude"]
    }
}
