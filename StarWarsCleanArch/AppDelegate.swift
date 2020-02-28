//
//  AppDelegate.swift
//  StarWarsCleanArch
//
//  Created by Miguel Barone - MBA on 27/02/20.
//  Copyright © 2020 Miguel Barone - MBA. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let appDI = AppDIContainer()
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let firstRootView = appDI.callFirstViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let navigation = UINavigationController(rootViewController: firstRootView)
        navigation.isNavigationBarHidden = true
        self.window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        return true
    }
}

