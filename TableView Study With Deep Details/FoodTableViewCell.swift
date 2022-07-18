//
//  FoodTableViewCell.swift
//  TableView Study With Deep Details
//
//  Created by Burak Yılmaz on 18.07.2022.
//

import UIKit


protocol OrderButtonClicked {
    func clickButton(indexPath: IndexPath)
}

class FoodTableViewCell: UITableViewCell {

    @IBOutlet var foodImageView: UIImageView!
    @IBOutlet var foodNameLabel: UILabel!
    @IBOutlet var foodPriceLabel: UILabel!
    
    var foodProtocol: OrderButtonClicked?
    var indexPath: IndexPath?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func orderButton(_ sender: Any) {
        
        foodProtocol?.clickButton(indexPath: indexPath!)
    }
    
}
