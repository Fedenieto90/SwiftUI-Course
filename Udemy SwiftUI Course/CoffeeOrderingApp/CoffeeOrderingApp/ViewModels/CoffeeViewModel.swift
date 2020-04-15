//
//  CoffeeViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class CoffeeListViewModel {
    
    var coffeeList: [CoffeeViewModel] = [CoffeeViewModel]()
    
}

class CoffeeViewModel {
    
    var coffee: Coffee
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
    
    var name: String {
        return self.coffee.name
    }
    
    var imageUrl: String {
           return self.coffee.imageUrl
       }
    
    var price: Double {
        return self.coffee.price
    }
    
}
