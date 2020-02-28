//
//  SWRepositoryImpl.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation
import RxSwift

public class SWRepositoryImpl: SWRepository {
    
    private let listService = SWListService()
    
    func getSWList() -> Single<[SWResponse]> {
        let list: Single<SWAPIResponse> = listService.getDecodedResponse()
        return list.map { (swList) in
            return swList.map()
        }
    }
}
