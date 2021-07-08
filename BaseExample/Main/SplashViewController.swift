//
//  SplashViewController.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/28.
//

import UIKit
import BaseKit

class SplashViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        appInitialize()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    private func appInitialize() {
        MainNavigationController.shared = self.navigationController as? BaseNavigationController
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.endInitialzing()
        }
    }
    
    
    private func endInitialzing() {
        MainNavigationController.shared.popViewController(animated: false)
        MainNavigationController.shared.pushViewController(HomeViewController.initFromNib(), animated: false)
    }
}
