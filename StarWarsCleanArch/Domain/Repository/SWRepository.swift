//
//  SWRepository.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

protocol SWRepository {
    func getSWList() -> Single<[SWResponse]>
}
