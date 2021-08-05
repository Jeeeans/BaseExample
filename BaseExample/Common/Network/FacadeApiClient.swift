//
//  FacadeApiClient.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/30.
//

import Foundation
import BaseKit


class FacadeApiClient: BaseApiClient {
    static let baseUrl = URL.facadeHost
    static let shared = FacadeApiClient(baseUrl: FacadeApiClient.baseUrl)
    
    
}
