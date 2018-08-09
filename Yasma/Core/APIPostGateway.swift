//
//  APIPostGateway.swift
//  Yasma
//
//  Created by kanagasabapathy on 10/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import Foundation
import Alamofire
protocol APIPostGateway: PostGateway {
    
}

class ApiBooksGatewayImplementation: APIPostGateway {
    
    
    func fetchPosts(completionHandler: @escaping FetchPostsEntityGatewayCompletionHandler) {
        
        let todoEndPoint: String = Api.requestForPosts
        Alamofire.request(todoEndPoint).responseJSON { response in
            
            guard let urlResponse = response.response else {
                if let error = response.result.error as NSError?, error.code == NSURLErrorNotConnectedToInternet {
                    completionHandler(.notConnectedToInternet)
                } else {
                    completionHandler(.failure)
                }
                return
            }

            switch urlResponse.statusCode {
            case 200:
                if let json = response.result.value as? NSDictionary,
                    let apps = ItunesWebService.parse(response: json)
                {
                    completion(.success(apps: apps))
                } else {
                    completion(.failure)
                }
            case NSURLErrorNotConnectedToInternet:
                completion(.notConnectedToInternet)
            default:
                completion(.failure)
            }
        }
        
        
        
    }
    

    


}
