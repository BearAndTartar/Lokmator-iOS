//
//  UserModel.swift
//  Lokmator
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import AlamofireObjectMapper
import Foundation
import ObjectMapper

class UserModel: LTModel {
    
    var name: String!
    var lastName: String!
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        lastName <- map["lastName"]
    }
    
}
