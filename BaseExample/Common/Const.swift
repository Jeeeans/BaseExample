//
//  Const.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/30.
//

import Foundation


struct Const {
    static let isDev = true
}

struct URL {
    
    static var domain = Const.isDev ? "https://test-dev.co.kr" : "https://test.co.kr"
    static var facadeHost = Const.isDev ? "https://facade-dev.test.co.kr" : "http://127.0.0.1:8080"
    
    static var home = "\(domain)\(PATH.home)"
    
    static var homeApi = "\(facadeHost)\(PATH.homeApi)"
    
    struct PATH {
        static var home = "/home/main"
        
        static var homeApi = "/v1/home/main"
    }
}
