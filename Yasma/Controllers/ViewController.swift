//
//  ViewController.swift
//  Yasma
//
//  Created by kanagasabapathy on 07/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import UIKit
import Alamofire
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fetchJsonFromAPI()
    }
    func fetchJsonFromAPI(){
        let todoEndPoint: String = "https://jsonplaceholder.typicode.com/posts"
        Alamofire.request(todoEndPoint).responseJSON { response in
            
            guard response.result.error == nil else {
                // got an error in getting the data, need to handle it
                print("error calling GET on /todos/1")
                print(response.result.error!)
                return
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

