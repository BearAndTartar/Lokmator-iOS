//
//  MainViewModel.swift
//  MvvmStarterSwiftProject
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import RxSwift
import UIKit

class MainViewModel: LTViewModel {

    let service: MainService!
    
    let lokmas: Variable<[LokmaCollectionCellViewModel]>! = Variable([]) 
    
    //MARK: - Init
    
    init(mainService: MainService) {
        self.service = mainService
    }
    
    //MARK: - Requests
    
    func callLokmas() {

        let receivedLokmas = service.getLokmas()
        
        for lokma in receivedLokmas {
            print(lokma)
            var lokmaCellViewModel = LokmaCollectionCellViewModel()
            lokmaCellViewModel = LokmaCollectionCellViewModel().initWithModel(model: lokma)
            self.lokmas.value.append(lokmaCellViewModel)
        }
    }
    
    func getUser() {
        
    }
    
    
}
