//
//  MainViewController.swift
//  MvvmStarterSwiftProject
//
//  Created by Ozgun Zor on 27/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import DZNEmptyDataSet
import RxSwift
import RxCocoa
import UIKit

class MainViewController: LTViewController {
    
    //MARK: - Vars
    
    var viewModel: MainViewModel!
    
    private let disposeBag = DisposeBag()

    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.prepareUI()
        self.prepareViewModel()
        self.setDZNEmptyDataSet()
        
        self.viewModel.callLokmas()        
    }
    
    // MARK: - Helper Methods
    
    func updateLokmas() {
        self.collectionView.reloadData()
    }
    
    func prepareViewModel() {
        
        let service = MainService()
        
        self.viewModel = MainViewModel(mainService: service)
        
        self.viewModel.lokmas.asObservable()
         .subscribe(onNext: { (lokmas) in
            self.updateLokmas()
         }).addDisposableTo(disposeBag)
    }
    
    func prepareUI() {

    }
    
    
}

// MARK: - DZN Empty Source Methods

extension MainViewController: DZNEmptyDataSetSource, DZNEmptyDataSetDelegate {
    func setDZNEmptyDataSet() {
        /* self.collectionView.emptyDataSetSource = self
         self.collectionView.emptyDataSetDelegate = self
         self.collectionView.tableFooterView = UIView()*/
    }
}

// MARK: - UICollectionView Methods

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel.lokmas.value.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.collectionView.deselectItem(at: indexPath, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "", for: indexPath) as! LokmaCollectionViewCell
        
        cell.viewModel.value = self.viewModel.lokmas.value[indexPath.row]
        
        return cell
    }
    
}
