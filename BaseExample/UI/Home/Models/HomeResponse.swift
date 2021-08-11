//
//  HomeResponse.swift
//  BaseExample
//
//  Created by Sungjun Chin on 2021/07/30.
//

import Foundation
import BaseKit

struct HomeResponse: ModuleResponsable {
    static func == (lhs: HomeResponse, rhs: HomeResponse) -> Bool {
        return true
    }
    
    var moduleList: [Module]!
    
    func parseModules() {
        
    }
    
    enum CodingKeys: CodingKey {
        case moduleList
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
    
    init(from decoder: Decoder) throws {
        do {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            self.moduleList = try container.decode([Module].self, forKey: .moduleList) as? [Module]
        } catch {
            Log.e(error.localizedDescription)
        }
        
    }
}
