//
//  ListDIContainer.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import Foundation

class ListDIContainer {
    
    func makeListViewController() -> ListViewController {
        return ListViewController.create(viewModel: vm)
    }
    
    var vm: ListViewModel {
        return ListViewModel(swListUseCase: useCase)
    }
    
    var useCase: SWListUseCase {
        return SWListUseCase(swRepository: repo)
    }
    
    var repo: SWRepositoryImpl {
        return SWRepositoryImpl()
    }
}
