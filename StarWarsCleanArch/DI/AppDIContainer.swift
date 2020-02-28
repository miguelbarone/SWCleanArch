//
//  AppDIContainer.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation

class AppDIContainer {
    
    private var makeFirstDI: FirstDIContainer {
        return FirstDIContainer()
    }
    
    private var makeFirstScreen: FirstViewController {
        return makeFirstDI.makeFirstViewController()
    }
    
    public func callFirstViewController() -> FirstViewController {
        return makeFirstScreen
    }
}
