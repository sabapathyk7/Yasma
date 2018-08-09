//
//  Post.swift
//  Yasma
//
//  Created by kanagasabapathy on 10/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import Foundation

struct Post {
    
    var userName: String
    var desc: String
    var title: String
    
    
}

struct Api {
    static let requestForPosts = "https://jsonplaceholder.typicode.com/posts"
}
