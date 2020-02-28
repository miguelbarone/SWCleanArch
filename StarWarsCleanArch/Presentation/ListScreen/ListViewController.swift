//
//  ListViewController.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 28/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: ListViewModelContract!
    var swPeople: [SWResponse] = []
    
    let disposeBag = DisposeBag()
    
    public class func create(viewModel: ListViewModel) -> ListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        view.viewModel = viewModel
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.showList()
        bind()
    }
    
    private func bind() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        viewModel.swList.map { $0 ?? [] }.drive(tableView.rx.items(cellIdentifier: "cell")) { index, model, cell in
            
            cell.textLabel?.text = model.name
            cell.textLabel?.textColor = UIColor(named: "red")
            cell.selectionStyle = .none
        }.disposed(by: disposeBag)
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
