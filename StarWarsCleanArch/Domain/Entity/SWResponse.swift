//
//  SWResponse.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation

struct SWResponse: Codable {
    let name: String
    let height: String
    let hair_color: String
    let skin_color: String
    let birth_year: String
    let gender: String
}
