//
//  PostViewController.swift
//  Yasma
//
//  Created by kanagasabapathy on 07/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import UIKit

class PostViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PostView {
    
    @IBOutlet weak var postTableView: UITableView!
    var presenter: PostPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return presenter.numberOfPosts
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as! PostTableViewCell
        presenter.configure(cell: cell, forRow: indexPath.row)
        return cell
    }
    
    func refreshPostTableView() {
        postTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
