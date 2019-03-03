//
//  initialPageViewController.swift
//  productPlatform
//
//  Created by RootDev on 3/2/19.
//  Copyright © 2019 RootDev. All rights reserved.
//

import UIKit

class initialPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var topSearchBar: UISearchBar!
    
    @IBOutlet weak var searchTableView: UITableView!
    
    var imageToPass = UIImage()
    var nameToPass = ""
    var priceToPass = ""
    var productTypeToPass = ""
    var subImagesArrayToPass = [UIImage()]
    var productImagesAndVideosToPass = [UIImage()]

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: searchTableViewCell = searchTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! searchTableViewCell
        
        if indexPath.row == 0 {
            cell.individualProductImage.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.15.47 AM")
            cell.individualProductTitle.text = "Coffee Mug"
            cell.individualProductPrice.text = "$15"
            cell.individualRatingLabel.text = "⭐️⭐️⭐️⭐️"
            
        } else if indexPath.row == 1 {
            cell.individualProductImage.image = #imageLiteral(resourceName: "Babysitting")
            cell.individualProductTitle.text = "Babysitting"
            cell.individualProductPrice.text = "$20 / hour"
            cell.individualRatingLabel.text = "⭐️⭐️⭐️"

        } else if indexPath.row == 2 {
            
            cell.individualProductImage.image = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.37.26 AM")
            cell.individualProductTitle.text = "Drone Prototype"
            cell.individualProductPrice.text = "$90"
            cell.individualRatingLabel.text = "⭐️⭐️⭐️⭐️⭐️"

            
        }
        
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 145
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if indexPath.row == 0 {
            
            imageToPass = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.15.47 AM")
            nameToPass = "Coffee Mug"
            priceToPass = "$15"
            productTypeToPass = "P"
            subImagesArrayToPass = [#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.16.19 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.16.07 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.16.25 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.15.47 AM")]
            
            productImagesAndVideosToPass = [#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.30.20 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.31.10 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.31.02 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.30.28 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 8.16.07 AM")]
            
        } else if indexPath.row == 1 {
            
            imageToPass = #imageLiteral(resourceName: "Babysitting")
            nameToPass = "Babysitting"
            priceToPass = "$20 / hour"
            productTypeToPass = "S"
            subImagesArrayToPass = [#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.06.17 AM"),#imageLiteral(resourceName: "babysitter picture 1"),#imageLiteral(resourceName: "babysitter picture 2"),#imageLiteral(resourceName: "Babysitting")]
            
            productImagesAndVideosToPass = [#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.27.22 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.27.46 AM"),#imageLiteral(resourceName: "babysitter picture 1"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.27.11 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.27.31 AM"),#imageLiteral(resourceName: "babysitter picture 2"),#imageLiteral(resourceName: "Babysitting")]

        } else if indexPath.row == 2 {
            
            imageToPass = #imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.37.26 AM")
            nameToPass = "Drone Prototype"
            priceToPass = "$90"
            productTypeToPass = "I"
            subImagesArrayToPass = [#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.37.36 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.37.43 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.37.51 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-02 at 8.58.14 PM")]
            
            productImagesAndVideosToPass = [#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.51.23 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.52.52 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.51.33 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.53.11 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.53.05 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.37.43 AM"),#imageLiteral(resourceName: "Screen Shot 2019-03-03 at 9.37.36 AM")]
            
        }
        
        

        performSegue(withIdentifier: "individualProductSegue", sender: nil)
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "individualProductSegue" {
            let newVC = segue.destination as! individualProductViewController
            
            newVC.productImageToReceive = imageToPass
            newVC.productNameToReceive = nameToPass
            newVC.productPriceToReceive = priceToPass
            newVC.subImagesArray = subImagesArrayToPass
            newVC.productTypeToReceive = productTypeToPass
            newVC.productImagesAndVideosArray = productImagesAndVideosToPass
            
        }
        
        
    }

}
