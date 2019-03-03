//
//  individualProductViewController.swift
//  productPlatform
//
//  Created by RootDev on 3/2/19.
//  Copyright © 2019 RootDev. All rights reserved.
//

import UIKit

class individualProductViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {

    var productImageToReceive = UIImage()
    var productNameToReceive = ""
    var productPriceToReceive = ""
    var productTypeToReceive = ""
    
    var subImagesArray = [UIImage()]
    var productImagesAndVideosArray = [UIImage()]
    
    var productDescriptionArray = [""]
    var productSpecificationArray = [""]
    var questionsArrays = [""]
    var answersArrays = [""]
    var userNamesArrays = [""]
    var userPicturesArray = [UIImage()]
    var userSuggestions = [""]
   
    @IBOutlet weak var individualProductTableView: UITableView!
    
    @IBOutlet weak var individualProductType: UILabel!
    
    @IBOutlet weak var individualProductImageView: UIImageView!
    
    @IBOutlet weak var individualProductNameLabel: UILabel!
    
    @IBOutlet weak var individualProductPriceLabel: UILabel!
    
    @IBOutlet weak var subImagesCollectionView: UICollectionView!
    
    
    @IBOutlet weak var individualProductQuantityLabel: UILabel!
    @IBOutlet weak var individualProductQuantityStepper: UIStepper!
    var individualProductQuantityInt = Int()
    
    @IBOutlet weak var productAddToCartButton: UIButton!
    
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    @IBOutlet weak var productSpecificationLabel: UILabel!
    
    // questions Outlets
    
    @IBOutlet weak var customerReviewLabel: UILabel!
    
    @IBOutlet weak var startRatingLabel: UILabel!
    @IBOutlet weak var starRatingDescriptionLabel: UILabel!
    
    
    @IBOutlet weak var productImagesAndVideos: UICollectionView!
    
    @IBOutlet weak var backButton: UIButton!
    
    var isCellExpanded: Bool = false
    var isFeedBackExpanded: Bool = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var finalInt = CGFloat()
        
        if indexPath.row == 0 {
            if isCellExpanded == false {
                finalInt = 135.0
            } else if isCellExpanded == true {
                finalInt = 345.0
            }
        } else if indexPath.row == 1 {
            if isFeedBackExpanded == false {
                finalInt = 135.0

            } else if isFeedBackExpanded == true {
                finalInt = 345.0
                
            }
        }
        
        return finalInt
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var finalCell = UITableViewCell()
        
        if indexPath.row == 0 {
            
            let cell1: productQuestionAndAnswerTableViewCell = individualProductTableView.dequeueReusableCell(withIdentifier: "productQ&Acell", for: indexPath) as! productQuestionAndAnswerTableViewCell
            
            if individualProductNameLabel.text == "Coffee Mug" {
                cell1.question1Label.text = "Does it fit in a car cup holder?"
                cell1.answer1Label.text = " Probably will not fit most cup holders because of diameter of cup and handle"
                cell1.question2Label.text = "Has anyone actually measured the capacity of the cup?"
                cell1.answer2Label.text = "Yes, it holds 10oz."
                cell1.question3Label.text = "What material is the lid made of?"
                cell1.answer3Label.text = "Pure ceramic"
                cell1.question4Label.text = ""
                cell1.answer4Label.text = ""
                cell1.question5Label.text = ""
                cell1.answer5Label.text = ""
                
            } else if individualProductNameLabel.text == "Babysitting" {
                cell1.question1Label.text = "What do you think your typical day as a nanny will look like?"
                cell1.answer1Label.text = "Helping the kids with their homework, cooking meals, tidying their rooms etc"
                cell1.question2Label.text = " Are you ready for a drug-screening test before taking up this job?"
                cell1.answer2Label.text = "I have no objections to such a test."
                cell1.question3Label.text = "What is your understanding of allergy management?"
                cell1.answer3Label.text = "I have applied this knowledge in my previous jobs."
                cell1.question4Label.text = ""
                cell1.answer4Label.text = ""
                cell1.question5Label.text = ""
                cell1.answer5Label.text = ""
            } else if individualProductNameLabel.text == "Drone Prototype" {
                cell1.question1Label.text = "How long is the typical flight time with the camera attached?"
                cell1.answer1Label.text = ""
                cell1.question2Label.text = "Is it compatible with the gopro hero7 model?"
                cell1.answer2Label.text = ""
                cell1.question3Label.text = "Would I be able to stream the video directly to my laptop rather than a phone?"
                cell1.answer3Label.text = ""
                cell1.question4Label.text = ""
                cell1.answer4Label.text = ""
                cell1.question5Label.text = ""
                cell1.answer5Label.text = ""
            }
            


            
            finalCell = cell1
            
            
        } else if indexPath.row == 1 {
            
            let cell2: customerFeedBackTableViewCell = individualProductTableView.dequeueReusableCell(withIdentifier: "customerFeedBackCell", for: indexPath) as! customerFeedBackTableViewCell
            
            if individualProductNameLabel.text == "Coffee Mug" {
                
                cell2.userName1.text = "Ethan"
                cell2.userPic1.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion1.text = "Improve Decall quality"
                cell2.userName2.text = "Melissa"
                cell2.userPic2.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion2.text = "Provide different models"
                cell2.userName3.text = "John"
                cell2.userPic3.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion3.text = "Smaller versions of it"
                cell2.userName4.text = "Jessica"
                cell2.userPic4.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion4.text = ""
                cell2.userName5.text = "Audrey"
                cell2.userPic5.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion5.text = ""
                
            } else if individualProductNameLabel.text == "Babysitting" {
                
                cell2.userName1.text = "Marcus"
                cell2.userPic1.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion1.text = "Read more for my kid"
                cell2.userName2.text = "Robert"
                cell2.userPic2.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion2.text = "Play more with my kid"
                cell2.userName3.text = "Jessica"
                cell2.userPic3.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion3.text = "Don't leave early"
                cell2.userName4.text = "Amy"
                cell2.userPic4.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion4.text = ""
                cell2.userName5.text = "Lucas"
                cell2.userPic5.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion5.text = ""
                
            } else if individualProductNameLabel.text == "Drone Prototype" {
                
                cell2.userName1.text = "Marcus"
                cell2.userPic1.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion1.text = ""
                cell2.userName2.text = "Robert"
                cell2.userPic2.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion2.text = ""
                cell2.userName3.text = "Jessica"
                cell2.userPic3.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion3.text = ""
                cell2.userName4.text = "Amy"
                cell2.userPic4.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion4.text = ""
                cell2.userName5.text = "Lucas"
                cell2.userPic5.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.47.12 AM")
                cell2.userSuggestion5.text = ""
                
            }
        
            
            
                finalCell = cell2
        }
       
        finalCell.selectionStyle = UITableViewCell.SelectionStyle.none

        
        return finalCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            
            if isCellExpanded == false {
                isCellExpanded = true
            } else {
                isCellExpanded = false
            }
           
            
        } else if indexPath.row == 1 {
            if isFeedBackExpanded == false {
                isFeedBackExpanded = true

            } else {
                isFeedBackExpanded = false
            }
        }
        tableView.beginUpdates()
        tableView.endUpdates()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        var finalInt = Int()
       
        if collectionView == subImagesCollectionView {
            
            finalInt = subImagesArray.count
            
        } else if collectionView == productImagesAndVideos {
            
            finalInt = productImagesAndVideosArray.count
            
        }
        
        return finalInt
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if collectionView == subImagesCollectionView {
            
            let cell1: subImagesCollectionViewCell = subImagesCollectionView.dequeueReusableCell(withReuseIdentifier: "subCell", for: indexPath) as! subImagesCollectionViewCell
            
             cell1.subImagesImageView.image = subImagesArray[indexPath.row]
            
            
            cell = cell1
            
        } else if collectionView == productImagesAndVideos {
            
            let cell2: productImagesAndVideosCollectionViewCell = productImagesAndVideos.dequeueReusableCell(withReuseIdentifier: "imagesAndVideosCell", for: indexPath) as! productImagesAndVideosCollectionViewCell
            
            cell2.productImagesAndVideosView.image = productImagesAndVideosArray[indexPath.row]
            
            cell = cell2
            
        }
        
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        individualProductImageView.image = productImageToReceive
        individualProductNameLabel.text = productNameToReceive
        individualProductPriceLabel.text = productPriceToReceive
        individualProductType.text = productTypeToReceive
        
        
        
        
       // return here, circle type individualProductType.layer.cornerRadius = individualProductType.frame.width / 500
        
        
        if individualProductNameLabel.text == "Coffee Mug" {
            productDescriptionLabel.text = "10oz Ceramic Mug. Microwave Safe. Heat Activated, 11 constellations appear as hot liquid is poured"
            productSpecificationLabel.text = " 4.3 x 4.3 x 3.5 inches. 14.4 ounces"
            customerReviewLabel.text = "Durable mug. Stylish and big. Sometimes decall doesn't glow despite high temperature"
            startRatingLabel.text = "⭐️⭐️⭐️⭐️"
            starRatingDescriptionLabel.text = "4/5"
            
        } else if individualProductNameLabel.text == "Babysitting" {
            productDescriptionLabel.text = "Responsible babysitter with experience for caring for children during weekends, evenings and holidays."
            productSpecificationLabel.text = "Expert in children's activities and safety"
            customerReviewLabel.text = "Easy going and collaborative. Can sometimes be lazy, needs positive incentives."
            startRatingLabel.text = "⭐️⭐️⭐️"
            starRatingDescriptionLabel.text = "3/5"

        } else if individualProductNameLabel.text == "Drone Prototype" {
            productDescriptionLabel.text = "GBell easy to carry foldable drone with HD Camera, Wireless and Bluetooth. Easy control for Adults and stable flight"
            productSpecificationLabel.text = "Manufactured by GBell. 10 oz drone. 3-level flight speed. 2.4 GHz and 360 degrees flight"
            customerReviewLabel.text = ""
            startRatingLabel.text = "⭐️⭐️⭐️⭐️⭐️"
            starRatingDescriptionLabel.text = "5/5"


        }
        
        
    }
    


    
    
    @IBAction func individualProductQuantityStepperAction(_ sender: UIStepper) {
        
        individualProductQuantityInt = Int(sender.value)
        individualProductQuantityLabel.text = ("\(individualProductQuantityInt)")
        
    }
    
    @IBAction func goToCartButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "goToCart", sender: nil)
        
    }
    
    
    @IBAction func backButtonAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
}

