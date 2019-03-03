//
//  customerFeedBackTableViewCell.swift
//  productPlatform
//
//  Created by RootDev on 3/3/19.
//  Copyright © 2019 RootDev. All rights reserved.
//

import UIKit

class customerFeedBackTableViewCell: UITableViewCell {

    @IBOutlet weak var userPic1: UIImageView!
    @IBOutlet weak var userName1: UILabel!
    @IBOutlet weak var userSuggestion1: UILabel!
    
    @IBOutlet weak var userPic2: UIImageView!
    @IBOutlet weak var userName2: UILabel!
    @IBOutlet weak var userSuggestion2: UILabel!
    
    @IBOutlet weak var userPic3: UIImageView!
    @IBOutlet weak var userName3: UILabel!
    @IBOutlet weak var userSuggestion3: UILabel!
    
    @IBOutlet weak var userPic4: UIImageView!
    @IBOutlet weak var userName4: UILabel!
    @IBOutlet weak var userSuggestion4: UILabel!
    
    @IBOutlet weak var userPic5: UIImageView!
    @IBOutlet weak var userName5: UILabel!
    @IBOutlet weak var userSuggestion5: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
