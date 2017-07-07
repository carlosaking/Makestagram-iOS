//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Carlos A. on 7/7/17.
//  Copyright © 2017 Carlos A. King. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    
    static let height: CGFloat = 54
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func optionsBtnTapped(_ sender: UIButton) {
        
        print("options button tapped")
    }
    

}
