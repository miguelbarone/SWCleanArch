//
//  FirstDIContainer.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation

protocol FirstRoutesView {
    func callListScreen() -> ListViewController
}

class FirstDIContainer: FirstRoutesView {

    private var makeListDI: ListDIContainer {
        return ListDIContainer()
    }
    
    private var makeListScreen: ListViewController {
        return makeListDI.makeListViewController()
    }
    
    func makeFirstViewController() -> FirstViewController {
        FirstViewController.create(routes: self)
    }
    
    func callListScreen() -> ListViewController {
        return makeListScreen
    }
}
