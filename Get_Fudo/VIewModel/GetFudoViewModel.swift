//
//  GetFudoViewModel.swift
//  Get_Fudo
//
//  Created by Rahul Sharma on 24/08/24.
//

import Foundation

class GetFudoViewModel : NSObject
{
    var getFudoData:Data1?
    
    func getFoodData(completion : @escaping (Bool) -> Void)
    {
        let url = ApiKeys.base_Url + ApiKeys.Endpoint.endP
        let para = ["containsMeat" : 1,"lat" : 51.507404,"long" : -0.1275863,"page" : 1,"storeId" : "66965fd7571d8a3ba392bdf3","timezone" : "Asia/Kolkata","zoneId" : "6516b062a437f892130e6986"] as [String : Any]
        let headers = ["Accept-Language" : "en-IN;q=1.0","Accept" : "*/*","Authorization" : "Bearer eyJhbGciOiJSU0EtT0FFUCIsImN0eSI6IkpXVCIsImVuYyI6IkExMjhHQ00iLCJ0eXAiOiJKV1QifQ.Z0nfIki-ELGxrkb9Sm0QbfiGA88oWRc4kA1XVwFibaEduogEcL--O4I1nFvr5RWGg1N4BpOhsaVlpqIH73F4PGNErJs7fc9mAvE1g1-lY6xGXgqWDHH_JBFfB5kNtJt7vPIGu-j9UgRU1FFhqfIWnylYhUS2Kxt9g9m0YSX-DOA.7aRiL2zjOZtRkLBc._ZuFoChDZdrtlreEcl7lvYgP8Mbx82xLp-vMRNm7Dx1Evmbpr661L2A2N2Sl4FCExrU_uinNkf3dd4yOfGlCqt7kZCDNxW6mRBMON47YGub5u5mHHrZmcUm3mMacF_fvoHOifLi251mzkbkJqeP1y4YGni-6pf0ybJwhl8jkZZjedss7lzkmMAMNVfqUicv_y3wCkU4F7V52HC-Ga2BmjToghATdeTRyBXrRt2yrJlNgNiGuwBBIv11SXaDEZrUh_vOdG2zWvjXSRUOYwmtWGykiRsrKOhvmkcr-0TnfLYcMeIihcub87kLAzfNVNmvSEYHpw33otvj0Wb5CQbwN7EPjR8XhKg3T4NgLws_4OIWfUsLGgShhbuDsnkY6NO6tTt0XLuaKXhpZ1hHm-9uhkMSScmIrL6H2mHm8s2oVEQcldYY0AZ7_MEJyEyB9qsgHvH9w6YoBxTF8a4jaFLXRbZuj44pDK3ySjHgIu_aMQPcGVx09fKxsIlRfdKMEQRc74J0lKSGbQnHELnS9Xpc9JbYj_BCvY1iOazmXdMpiDgBfFay-JoNnJpiBlgBvC8wUg2VUl3rgf5zfHW-UF4oulJWSpCe0xi2liR1fv4FxxRS17BYhfOE9zT1DKz9N1cBPaFGPxaXlAtp9X4qKZ7GBCPBSMPmrTRPhbJxa_rlVFfPJXwpf61VkFOuvv3cxcol5IFnS6KtTRfG0vkPf9FAXrlly52a9PaNFT91GEv--JFXDfZ6624eMKteNeJ3Nc_oadqw-6OIUBNTGgue3y2axZQK_1N5oEymy2agXv4RxOTfiharnkZrc0Z2Vo7uOvquNLaLr0wy2TQZj68p6pywPQnGogem4ojsobSmMhNJqSYkB1QLgg1w-NYUG2P7aaZmrHLM-bqSFctHcERz51jrO4NQIMj02cipEZx0kg4Le4elLPjhQ31xhiFJjFN0rkzSdmJKYeofD_QMvrk0tHYPNhardEFhFcl_-8BoeB7gpMmaPSf9BjhInxCdHUVbH3QBqSgzO7R5o_WA_b7bgj7bDcO-cP1Mt5HVzTX2Wx-ouy47HPlShGGLQu1VAcJFcAC3uRGIAg9IRezALTgqOc2a3Kns8p7v5dRZBRa473oGGBZaNmZm0uks3J-sH1j_bpGGw2sYK0qgzsO8RaAgNact9Jz30SO2pvpe8wVdxoy2HikSjtS2uCt0w2CWyb-FkDveJMt_4BQeYPsWIm2vpYdc72GnFmJW25GuDCMjFDooJHd_2rhBHvTNWPOiDXUqScO7XEJIOqEyxabZLfKN1gI7tzXLyfbZhg42WKLH7ljjYg9r0g3B6AsQz_vNLVwV8IQS3YfadzhY-CkgJznsinkfYbaw7youTkudwtn5omP5HXYcBM5P5-_d3IcJl1zBpJSn0OaWImiPGI0Uk_gz9jpKLs4GhQbKuRMbPvKoht5KHh6OLDmNS6PauR4vXMbWwi8wCpAdK-ENY_kWEg1MAiB58mxL7AiciPntHBicVqc3WSbRUv2OcFKeB38U02TAnYx7NWnoTWNKfWJrvGJU0GVWlxoZcjWEQt_atplYpLPHPuJqyMI2j_JaUK1zs6bcmVaB49VUvD6c2_F8K1FsPATCbUrceavVUtHk-Sin39JezyJoQEFShF4SDjttzjooBlivFBv0_MufFBy2AnyRjl8iTUV-o1ZSI4Gf0XOdO2nj2IYbQ8620kBPAFo6Srgpb94COgqtJLgmgUg2qbEMdRw.4Dc0vNiuGj_BecKU3nrVTA","language" : "en","storeCategoryId" : "650d5735254a6ac50f0fff44","User-Agent" : "Getfudo/1.0.0 (com.betagetfudo.ios; build:103; iOS 17.2.1) Alamofire/5.9.1","Accept-Encoding" : "br;q=1.0, gzip;q=0.9, deflate;q=0.8"]
        
        NetworkCall(data : para,headers: headers,url: url,method: .get,isJSONRequest: false).executeQuery()
        {
            (result : (Result<MainModel,Error>)) in
            switch result
            {
            case .success(let post):
                print(post)
                self.getFudoData = post.data
                self.getFudoData?.productData?[0].isExpand = true
                completion(true)
            case .failure(let error):
                completion(false)
                print(error.localizedDescription)
                print("")
            }
            
        }
    }
    
}
