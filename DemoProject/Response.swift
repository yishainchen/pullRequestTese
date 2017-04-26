//
//  Response.swift
//  DemoProject
//
//  Created by yishain chen on 2017/4/24.
//  Copyright © 2017年 AppWorkout. All rights reserved.
//

import ObjectMapper
import Foundation

class BaseResponse: Mappable {
    var hasMore : Int?
    var quotaRemaining : Int?
    var quotaMax : Int?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        hasMore       <- map["has_more"]
        quotaRemaining      <- map["quota_remaining"]
        quotaMax   <- map["quota_max"]
    }
}

class StackoverflowResponse: BaseResponse {
    
    
    var items : [StackOverFlow]?
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        items       <- map["items"]
    }
}

