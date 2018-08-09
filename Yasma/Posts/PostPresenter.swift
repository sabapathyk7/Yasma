//
//  PostPresenter.swift
//  Yasma
//
//  Created by kanagasabapathy on 09/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import Foundation

protocol PostView: class {
    func refreshPostTableView()
}

protocol PostCellView {
    func display(userName: String)
    func display(postTitle: String)
    func display(postDesc: String)
}

protocol PostPresenter {
    var numberOfPosts: Int { get }
    func configure(cell: PostCellView, forRow row: Int)
    func didSelect(row: Int)
}

class PostPresenterImplementation: PostPresenter{
    
    var posts = [Post]()

    var numberOfPosts: Int {
        return posts.count
    }
    
    func configure(cell: PostCellView, forRow row: Int) {
        
        let post = posts[row]
        
        cell.display(postDesc: post.desc)
        cell.display(userName: post.userName)
        cell.display(postTitle: post.title)
    }
    
    func didSelect(row: Int) {
        
        let post = posts[row]
        
        
    }
    
    
    
    
    
}
