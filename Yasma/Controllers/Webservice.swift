//
//  Webservice.swift
//  Yasma
//
//  Created by kanagasabapathy on 07/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import Foundation
import Alamofire



func fetchJsonFromAPI(){
    let todoEndPoint: String = "https://jsonplaceholder.typicode.com/posts"
    Alamofire.request(todoEndPoint).responseJSON { response in
    
        
    }
    
    
}
