//
//  ViewController.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 27/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    private var routes: FirstRoutesView!
    
    public class func create(routes: FirstRoutesView) -> FirstViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        view.routes = routes
        return view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func callListScrennButton(_ sender: Any) {
        let vc = routes.callListScreen()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

