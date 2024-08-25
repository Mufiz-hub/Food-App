//
//  Helper.swift
//  Get_Fudo
//
//  Created by Rahul Sharma on 24/08/24.
//

import Foundation
import Kingfisher
import UIKit
struct ApiKeys
{
    static var base_Url = "https://api.getfudo.ai/"
    static var api_Keys = ""
    struct Endpoint
    {
        static var endP = "get/storeMenu?containsMeat=1&lat=51.507404&long=-0.1275863&page=1&storeId=66965fd7571d8a3ba392bdf3&timezone=Asia/Kolkata&zoneId=6516b062a437f892130e6986"
    }
}

class Helper
{
    class func getImgFromUrl(imgView : UIImageView,url : String)
    {
        let url = URL(string : url)
        imgView.kf.setImage(with: url,placeholder: UIImage(named: "placeHolder"))
    }
}
