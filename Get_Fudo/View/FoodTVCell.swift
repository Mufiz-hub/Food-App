//
//  FoodTVCell.swift
//  Get_Fudo
//
//  Created by Rahul Sharma on 24/08/24.
//

import UIKit

class FoodTVCell: UITableViewCell {

    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var vegnonImg: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var namelbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        foodImg.layer.cornerRadius = 28
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func setData(data : Products)
    {
        self.namelbl.text = data.productName ?? ""
        self.descLabel.text = data.detailDescription ?? ""
        Helper.getImgFromUrl(imgView: self.foodImg, url: data.images ?? "")
        
        if (data.containsMeat ?? true)
        {
            self.vegnonImg.image = UIImage(named: "nonveg")
        }
        else
        {
            self.vegnonImg.image = UIImage(named: "vegg")
        }
    }
    
}
