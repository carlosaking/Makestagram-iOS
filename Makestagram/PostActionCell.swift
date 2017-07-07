//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Carlos A. on 7/7/17.
//  Copyright © 2017 Carlos A. King. All rights reserved.
//

import UIKit

class PostActionCell: UITableViewCell {

    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var likeCountLbl: UILabel!
    @IBOutlet weak var timeAgoLbl: UILabel!
    
    static let height: CGFloat = 54
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func likeBtnTapped(_ sender: UIButton) {
        
        print("like buttn tapped")
    }

}
