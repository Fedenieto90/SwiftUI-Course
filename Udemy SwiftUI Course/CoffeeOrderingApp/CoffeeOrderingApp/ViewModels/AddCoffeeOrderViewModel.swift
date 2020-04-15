//
//  AddCofeeOrderViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class AddCoffeeOrderViewModel: ObservableObject {
    
    var webService: WebService!
    var name: String = ""
    @Published var size: String = "Medium"
    @Published var coffeeName: String = "Capuccino"
    
    var coffeeList: [CoffeeViewModel] {
        return Coffee.all().map(CoffeeViewModel.init)
    }
    
    var total: Double {
        return calculateTotalPrice()
    }
    
    init() {
        webService = WebService()
    }
    
    func priceForSize() -> Double {
        let prices = ["Small": 2.0, "Medium": 4.0, "Large": 6.0]
        return prices[self.size]!
    }
    
    func calculateTotalPrice() -> Double {
        let coffeeVM = coffeeList.first { $0.name == coffeeName }
        if let coffeeVM = coffeeVM {
            return coffeeVM.price * priceForSize()
        } else {
            return 0
        }
    }
    
    func placeOrder() {
        let order = Order(name: self.name, coffeeName: self.coffeeName, size: self.size, total: self.total)
        webService.createOrder(order: order) { response in
     
        }
    }
    
}
