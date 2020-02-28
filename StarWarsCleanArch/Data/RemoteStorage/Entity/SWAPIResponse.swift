//
//  SWAPIResponse.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation

struct SWAPIResponse: Codable {
    let count: Int
    let next: String
    let previous: String?
    let results: [SWAPIPeople]
}

struct SWAPIPeople: Codable {
    let name: String
    let height: String
    let hair_color: String
    let skin_color: String
    let birth_year: String
    let gender: String
}

extension SWAPIResponse {
    func map() -> [SWResponse] {
        var list: [SWResponse] = []
        self.results.forEach { (sw) in
            list.append(SWResponse(name: sw.name, height: sw.height, hair_color: sw.hair_color, skin_color: sw.skin_color, birth_year: sw.birth_year, gender: sw.gender))
        }
        return list
    }
}
