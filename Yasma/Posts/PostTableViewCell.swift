//
//  PostTableViewCell.swift
//  Yasma
//
//  Created by kanagasabapathy on 09/08/18.
//  Copyright © 2018 kanagasabapathy. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell, PostCellView {
    
    

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var postTitleLabel: UILabel!
    @IBOutlet weak var postDescLabel: UILabel!
    
    func display(userName: String) {
        userNameLabel.text = userName
    }
    
    func display(postTitle: String) {
        postTitleLabel.text = postTitle
    }
    
    func display(postDesc: String) {
        postDescLabel.text = postDesc
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
