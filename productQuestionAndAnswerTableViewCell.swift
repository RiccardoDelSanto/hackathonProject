//
//  productQuestionAndAnswerTableViewCell.swift
//  productPlatform
//
//  Created by RootDev on 3/3/19.
//  Copyright © 2019 RootDev. All rights reserved.
//

import UIKit

class productQuestionAndAnswerTableViewCell: UITableViewCell {

    @IBOutlet weak var question1Label: UILabel!
    @IBOutlet weak var answer1Label: UILabel!
    
    @IBOutlet weak var question2Label: UILabel!
    @IBOutlet weak var answer2Label: UILabel!
    
    @IBOutlet weak var question3Label: UILabel!
    @IBOutlet weak var answer3Label: UILabel!
    
    @IBOutlet weak var question4Label: UILabel!
    @IBOutlet weak var answer4Label: UILabel!
    
    @IBOutlet weak var question5Label: UILabel!
    @IBOutlet weak var answer5Label: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
