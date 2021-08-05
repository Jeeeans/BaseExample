//
//  Const.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/30.
//

import Foundation


struct Const {
    static let isDev = false
    
}

struct URL {
    
    static var domain = Const.isDev ? "https://test-dev.co.kr" : "https://test.co.kr"
    static var facadeHost = Const.isDev ? "https://facade-dev.test.co.kr" : "https://facade.test.co.kr"
    
    static var home = "\(domain)\(PATH.home)"
    
    
    static var homeApi = "\(facadeHost)\(PATH.homeApi)"
    
    
    struct PATH {
        static var home = "/home/main"
        
        
        static var homeApi = "/home/main"
    }
}
