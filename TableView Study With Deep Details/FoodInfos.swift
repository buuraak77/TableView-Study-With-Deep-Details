//
//  FoodInfos.swift
//  TableView Study With Deep Details
//
//  Created by Burak Yılmaz on 18.07.2022.
//

import Foundation

class FoodInfos {
    
    var foodId: Int
    var foodName: String
    var foodImageName: String
    var foodPrice: Double
    
    init(foodId: Int,foodName: String,foodImageName: String,foodPrice: Double) {
        
        self.foodId = foodId
        self.foodName = foodName
        self.foodImageName = foodImageName
        self.foodPrice = foodPrice
        
        
    }
    
    
}
