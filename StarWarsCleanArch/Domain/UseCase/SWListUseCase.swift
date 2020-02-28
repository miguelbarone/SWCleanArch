//
//  SWListUseCase.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation
import RxSwift

public class SWListUseCase {
    let swRepository: SWRepository
    let disposeBag = DisposeBag()
    
    init(swRepository: SWRepository) {
        self.swRepository = swRepository
    }
    
    func getSWList() -> Single<[SWResponse]> {
        return swRepository.getSWList()
    }
}
