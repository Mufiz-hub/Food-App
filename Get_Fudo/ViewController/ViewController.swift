//
//  ViewController.swift
//  Get_Fudo
//
//  Created by Rahul Sharma on 24/08/24.
//

import UIKit

class ViewController: UIViewController {
    var foodVM = GetFudoViewModel()
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblView.register(UINib(nibName: "FoodTVCell", bundle: nil), forCellReuseIdentifier: "FoodTVCell")
        self.tblView.estimatedRowHeight = 250
        self.tblView.rowHeight = UITableView.automaticDimension
        self.foodVM.getFoodData { result in
            if result{
                self.tblView.reloadData()
            }
            else
            {
                print("Error Coming!")
            }
        }
    }
    @objc func letsCheck(btn : UIButton)
    {
        if ((self.foodVM.getFudoData?.productData?[btn.tag].isExpand) ?? false)
        {
            self.foodVM.getFudoData?.productData?[btn.tag].isExpand = false
            self.tblView.reloadData()
        }
        else
        {
            self.foodVM.getFudoData?.productData?[btn.tag].isExpand = true
            self.tblView.reloadData()
        }
    }

}

extension ViewController : UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if ((self.foodVM.getFudoData?.productData?[section].isExpand) ?? false)
        {
            return foodVM.getFudoData?.productData?[section].products?.count ?? 00

        }
        return 0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return foodVM.getFudoData?.productData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTVCell", for: indexPath) as! FoodTVCell
        if let data = foodVM.getFudoData?.productData?[indexPath.section].products?[indexPath.row]
        {
            cell.setData(data: data)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 18))
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 50, height: 50))
        let btn = UIButton(frame: CGRect(x: view.frame.width - 40, y: 9, width: 30, height: 30))
        btn.addTarget(self, action: #selector(letsCheck), for: .touchUpInside)
        btn.tag = section
        if ((self.foodVM.getFudoData?.productData?[section].isExpand) ?? false)
        {
            btn.setImage(UIImage(named: "up-arrow"), for: .normal)
        }
        
        else
        {
            btn.setImage(UIImage(named: "arrow-down-sign-to-navigate"), for: .normal)

        }

        label.text = foodVM.getFudoData?.productData?[section].catName ?? ""
        label.sizeToFit()
        label.textColor = UIColor.black
        view.addSubview(label)
        view.addSubview(btn)
        view.backgroundColor = UIColor.gray
        self.view.addSubview(view)
        

        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 55
    }
}
