//
//  ViewController.swift
//  TableView Study With Deep Details
//
//  Created by Burak Yılmaz on 18.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var food = [FoodInfos]()
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Food Order Page"
        
        
        
        
        
        
        food.append(FoodInfos(foodId: 1, foodName: "Ayran", foodImageName: "ayran", foodPrice: 5.0))
        food.append(FoodInfos(foodId: 2, foodName: "Baklava", foodImageName: "baklava", foodPrice: 50.0))
        food.append(FoodInfos(foodId: 3, foodName: "Fanta", foodImageName: "fanta", foodPrice: 15.0))
        food.append(FoodInfos(foodId: 4, foodName: "Köfte", foodImageName: "köfte", foodPrice: 60.0))
        food.append(FoodInfos(foodId: 5, foodName: "Makarna", foodImageName: "makarna", foodPrice: 35.0))
        food.append(FoodInfos(foodId: 6, foodName: "Pizza", foodImageName: "pizza", foodPrice: 40.0))
        food.append(FoodInfos(foodId: 7, foodName: "Su", foodImageName: "su", foodPrice: 5.0))
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    


}

extension ViewController: UITableViewDelegate, UITableViewDataSource, OrderButtonClicked {
    func clickButton(indexPath: IndexPath) {
        
        let comingFood = food[indexPath.row]
        
        let alert = UIAlertController(title: "NEW ORDER!: \(comingFood.foodName)", message: "Price You Should Pay: \(comingFood.foodPrice) ₺", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK!", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return food.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let comingFood = food[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FoodTableViewCell
        
        cell.foodNameLabel.text = comingFood.foodName
        cell.foodPriceLabel.text = "\(comingFood.foodPrice) ₺"
        cell.foodImageView.image = UIImage(named: comingFood.foodImageName)
        
        cell.foodProtocol = self
        cell.indexPath = indexPath
        
        return cell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let comingFood = food[indexPath.row]
        
        let alert = UIAlertController(title: "\(comingFood.foodName)".uppercased(), message: "Name: \(comingFood.foodName)\nPrice: \(comingFood.foodPrice)\nClick Order Button To Buy It", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "BACK!", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}

