//
//  PostActionCell.swift
//  Makestagram
//
//  Created by Carlos A. on 7/7/17.
//  Copyright © 2017 Carlos A. King. All rights reserved.
//

import UIKit
protocol PostActionCellDelegate: class {
    func didTapLikeButton(_ likeButton: UIButton, on cell: PostActionCell)
}

class PostActionCell: UITableViewCell {

    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var likeCountLbl: UILabel!
    @IBOutlet weak var timeAgoLbl: UILabel!
    
    // MARK: - Properties
    weak var delegate: PostActionCellDelegate?
    static let height: CGFloat = 54
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBAction func likeBtnTapped(_ sender: UIButton) {
        
        delegate?.didTapLikeButton(sender, on: self)

    }

}
