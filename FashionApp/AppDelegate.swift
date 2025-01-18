//
//  AppDelegate.swift
//  FashionApp
//
//  Created by Engy on 11/14/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = HomeVC()
        window?.makeKeyAndVisible()
        return true
    }

  
}

