//
//  LokmaCollectionCellModel.swift
//  Lokmator
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import UIKit

class LokmaCollectionCellViewModel: LTViewModel {
    
    var companyName: String!
    var companyYearExperience: Int!
    var location: LocationModel!
    
    func initWithModel(model:LokmaModel) -> LokmaCollectionCellViewModel {
        
        self.companyName = model.place
        self.companyYearExperience = model.years
        self.location = model.location
        
        return self
    }
    
}
