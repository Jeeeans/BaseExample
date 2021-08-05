//
//  HomeService.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/30.
//

import Foundation
import RxSwift

struct HomeService {
    
}

extension HomeService {
    func getHomeModules() -> Observable<HomeResponse> {
        return FacadeApiClient.shared.sendGet(path: URL.PATH.homeApi)
    }
}
