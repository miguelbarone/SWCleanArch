//
//  ListViewModel.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

protocol ListViewModelContract {
    var swList: Driver<[SWResponse]?> { get }
    func showList()
}

class ListViewModel: ListViewModelContract {
    private let swStateRelay: BehaviorRelay<[SWResponse]?> = BehaviorRelay(value: nil)
    
    var swList: Driver<[SWResponse]?> { return swStateRelay.asDriver() }
    
    let swListUseCase: SWListUseCase
    let disposeBag = DisposeBag()
    
    init(swListUseCase: SWListUseCase) {
        self.swListUseCase = swListUseCase
    }
    
    func showList() {
        swListUseCase.getSWList().subscribe(onSuccess: { (swPeoples) in
            self.swStateRelay.accept(swPeoples)
            }).disposed(by: disposeBag)
    }
    
    
}
