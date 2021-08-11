//
//  HomeCoordinator.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/29.
//

import Foundation
import BaseKit

class HomeCoordinator: Coordinatable {
    var navigation: BaseNavigationController = MainNavigationController.shared
    var viewModel: HomeViewModel!
    
    func start() {
        let service = HomeService()
        self.viewModel = HomeViewModel()
    }
}
