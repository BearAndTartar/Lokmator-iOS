//
//  MainViewModel.swift
//  MvvmStarterSwiftProject
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import UIKit

class MainViewModel: LTViewModel {

    let service = MainService()
    
    func callLokmas() -> [LokmaModel] {

        let lokmas = service.getLokmas()
        
        return lokmas
    }
}
