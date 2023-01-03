//
//  AppCordinator.swift
//  Demo
//
//  Created by Mac on 02/01/2023.
//

import Foundation
import UIKit

protocol Cordinator {
    var window: UIWindow { get set }
    func start()
}

class AppCordinator: Cordinator {
    var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewModel = PostsViewModel()
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PostsViewController") as! PostsViewController
        window.rootViewController = vc
        vc.viewModel = viewModel
        window.makeKeyAndVisible()
    }
   
}
