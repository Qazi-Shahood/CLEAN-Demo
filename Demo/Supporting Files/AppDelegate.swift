//
//  AppDelegate.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let cordinator = AppCordinator(window: window!)
        cordinator.start()
        return true
    }


}

