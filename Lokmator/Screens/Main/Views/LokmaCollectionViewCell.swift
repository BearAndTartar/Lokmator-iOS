//
//  LokmaCollectionViewCell.swift
//  Lokmator
//
//  Created by Ozgun Zor on 28/05/2017.
//  Copyright © 2017 Ozgun Zor. All rights reserved.
//

import RxSwift
import UIKit

class LokmaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var placeNameLabel: UILabel!
    @IBOutlet weak var placeExperienceLabel: UILabel!
    @IBOutlet weak var placeLocationLabel: UILabel!
    
    private let disposeBag = DisposeBag()
    
    var viewModel : Variable<LokmaCollectionCellViewModel>! 

    override func awakeFromNib() {
        super.awakeFromNib()
        self.bindViewModel()
    }
    
    func bindViewModel() {
        self.viewModel.asObservable().subscribe(onNext: { (viewModel) in
            self.updateCell()
        }).addDisposableTo(disposeBag)
    }
    
    func updateCell() {
        self.placeNameLabel.text = self.viewModel.value.companyName
        self.placeLocationLabel.text = String(self.viewModel.value.location.latitude)
        self.placeExperienceLabel.text = String(self.viewModel.value.companyYearExperience)
    }
    
    

}
