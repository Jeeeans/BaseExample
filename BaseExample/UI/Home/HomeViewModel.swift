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
    
    
    private var _modules = BehaviorRelay<[Module]>(value: [])
    var modulesObservable: Observable<[Module]> { return _modules.asObservable() }
    var modules: [Decodable] { return _modules.value }
    
    var disposeBag = DisposeBag()
    
    func start(_ service: HomeService) {
        let homeResponse = service.getHome()
        
        homeResponse.map { response in
            response.moduleList
        }.asDriver(onErrorJustReturn: [])
        .drive(_modules)
        .disposed(by: disposeBag)
        
        
    }
}
