//
//  searchTableViewCell.swift
//  productPlatform
//
//  Created by RootDev on 3/2/19.
//  Copyright © 2019 RootDev. All rights reserved.
//

import UIKit

class searchTableViewCell: UITableViewCell {

    @IBOutlet weak var individualProductImage: UIImageView!
    
    @IBOutlet weak var individualProductTitle: UILabel!
    
    @IBOutlet weak var individualProductPrice: UILabel!
    
    @IBOutlet weak var individualRatingLabel: UILabel!
    
    @IBOutlet weak var individualProductType: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
