//
//  StackOverFlow.swift
//  DemoProject
//
//  Created by yishain chen on 2017/4/25.
//  Copyright © 2017年 AppWorkout. All rights reserved.
//

import Foundation
import ObjectMapper

struct StackOverFlow : Mappable{
    var answerCount : Int?
    var creationDate : Int?
    var isAnswered : Int?
    
    init?(map:Map) {
        
    }
 
    
    mutating func mapping(map: Map) {
        answerCount <- map["answer_count"]
        creationDate <- map["creation_date"]
        isAnswered <- map["is_answered"]
    }

}
