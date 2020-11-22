//
//  PostCell.swift
//  Parsta
//
//  Created by Haruna Yamakawa on 11/22/20.
//  Copyright © 2020 Haruna. All rights reserved.
//

import UIKit


class PostCell: UITableViewCell {
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
