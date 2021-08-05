//
//  HomeViewModel.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/29.
//

import Foundation
import BaseKit
import RxCocoa
import RxRelay
import RxSwift

class HomeViewModel: BaseRxViewModel {
    
    
    private var _modules = BehaviorRelay<[Decodable]>(value: [])
    var modulesObservable: Observable<[Decodable]> { return _modules.asObservable() }
    var modules: [Decodable] { return _modules.value }
    
    
    
    func start(_ service: HomeService) {
        
    }
}
