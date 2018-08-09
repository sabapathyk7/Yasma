//
//  PostGateway.swift
//  Yasma
//
//  Created by kanagasabapathy on 10/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import Foundation

typealias FetchPostsEntityGatewayCompletionHandler = (_ posts: Result<[Post]>) -> Void

protocol PostGateway {
    
    func fetchPosts(completionHandler: @escaping FetchPostsEntityGatewayCompletionHandler)
    
}
