//
//  individualProductObject.swift
//  productPlatform
//
//  Created by RootDev on 3/2/19.
//  Copyright © 2019 RootDev. All rights reserved.
//

import UIKit

class individualProductObject: NSObject, NSCoding {
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(userName, forKey: "userName")
        aCoder.encode(userEmail, forKey: "userEmail")
        aCoder.encode(userPhone, forKey: "userPhone")
        aCoder.encode(userPassword, forKey: "userPassword")
        aCoder.encode(userAddress, forKey: "userAddress")
        
        aCoder.encode(userAddressLatitude, forKey: "userAddressLatitude")
        aCoder.encode(userAddressLongitude, forKey: "userAddressLongitude")
        
        
        //        aCoder.encode(userAddressLatitude, forKey: "userAddressLatitude")
        //        aCoder.encode(userAddressLongitude, forKey: "userAddressLongtitude")
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        if let archivedUserName = aDecoder.decodeObject(forKey: "userName") as? String {
            userName = archivedUserName
        }
        if let archivedUserEmail = aDecoder.decodeObject(forKey: "userEmail") as? String {
            userEmail = archivedUserEmail
        }
        if let archivedUserPhone = aDecoder.decodeObject(forKey: "userPhone") as? String {
            userPhone = archivedUserPhone
        }
        if let archivedUserPassword = aDecoder.decodeObject(forKey: "userPassword") as? String {
            userPassword = archivedUserPassword
        }
        if let archivedUserAddress = aDecoder.decodeObject(forKey: "userAddress") as? String {
            userAddress = archivedUserAddress
        }
        
        userAddressLatitude = aDecoder.decodeDouble(forKey: "userAddressLatitude")
        
        userAddressLongitude = aDecoder.decodeDouble(forKey: "userAddressLongitude")
        
    }
    
    
    var userName: String = ""
    var userEmail: String = ""
    var userPhone: String = ""
    var userPassword: String = ""
    var userAddress: String = ""
    
    //transform into point or tuple
    var userAddressLatitude: Double = 0
    var userAddressLongitude: Double = 0
    
    init(name: String, email: String, phone: String, password: String, address: String, addressLatitude: Double, addressLongitude: Double) {
        
        userName = name
        userEmail = email
        userPhone = phone
        userPassword = password
        userAddress = address
        userAddressLatitude = addressLatitude
        userAddressLongitude = addressLongitude
        
    }
    
}
