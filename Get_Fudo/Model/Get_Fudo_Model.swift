//
//  Get_Fudo_Model.swift
//  Get_Fudo
//
//  Created by Rahul Sharma on 24/08/24.
//

import Foundation

struct MainModel : Codable
{
    var data : Data1?
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.data = try container.decodeIfPresent(Data1.self, forKey: .data)
    }
}
struct Data1 : Codable
{
    var productData : [ProductsData]?
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.productData = try container.decodeIfPresent([ProductsData].self, forKey: .productData)
    }
}

struct ProductsData : Codable
{
    var catName : String?
    var products : [Products]?
    var isExpand : Bool?
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.catName = try container.decodeIfPresent(String.self, forKey: .catName)
        self.products = try container.decodeIfPresent([Products].self, forKey: .products)
        self.isExpand = try container.decodeIfPresent(Bool.self, forKey: .isExpand)
    }
  
}


struct Products : Codable
{
    var detailDescription : String?
    var images : String?
    var containsMeat : Bool?
//    var allPrice : [AllPrice]
    var productName : String?
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.detailDescription = try container.decodeIfPresent(String.self, forKey: .detailDescription)
        self.images = try container.decodeIfPresent(String.self, forKey: .images)
        self.containsMeat = try container.decodeIfPresent(Bool.self, forKey: .containsMeat)
        self.productName = try container.decodeIfPresent(String.self, forKey: .productName)
    }
}

//struct AllPrice : Codable
//
//{
//    var b2cPriceBeforeOffer : Double?
//    var platformName : String?
//}
