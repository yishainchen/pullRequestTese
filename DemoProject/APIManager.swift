//
//  APIManager.swift
//  DemoProject
//
//  Created by yishain chen on 2017/4/24.
//  Copyright © 2017年 AppWorkout. All rights reserved.
//

import Foundation


import Foundation
import Alamofire
import RxSwift
import ObjectMapper

extension APIManager {
    
    
    // test func
    func getAppId() -> Observable<AnyObject> {
        var params = [Int]()
        return postToService()
        
    }
    
}


class APIManager: NSObject {
    
    static let sharedInstance = APIManager()

    var Test_API_URL =  "https://api.stackexchange.com/2.2/questions?order=desc&sort=activity&site=stackoverflow"
    func postToService() -> Observable<AnyObject>{
        return Observable.create({ (observer) -> Disposable in
            Alamofire.request(self.Test_API_URL,
                              method: .get,
                              parameters:nil,
                              encoding: URLEncoding.default,
                              headers:nil).responseJSON(completionHandler: { (response) in
                                switch response.result {
                                case .success:
                                    if let resultJson = response.result.value as? [String: AnyObject] {
                                        observer.on(.next(resultJson as AnyObject))
                                        observer.on(.completed)
                                    } else {
                                        //                                    observer.onError(NSError(domain: url, code: 400, userInfo: [NSLocalizedDescriptionKey : "response not json format"]))
                                    }
                                case .failure(let error):
                                    observer.onError(error as NSError)
                                    break
                                }
                                
                              })
            return   Disposables.create()
        })
    }
    
}
