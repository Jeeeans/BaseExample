//
//  HomeService.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/30.
//

import Foundation
import RxSwift

protocol HomeServiceType {
    func getHomeModules() -> Observable<HomeResponse>
}

struct HomeService: HomeServiceType {
    func getHome() -> Observable<HomeResponse> {
        return FacadeApiClient.shared.sendGet(path: URL.PATH.homeApi)
    }
}
