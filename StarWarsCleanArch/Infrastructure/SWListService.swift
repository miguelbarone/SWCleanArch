//
//  SWListService.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation

class SWListService: MoyaService {
    override var baseURL: URL {
        return URL(string: "https://swapi.co/api/")!
    }
    
    override var path: String {
        return "people"
    }
}

