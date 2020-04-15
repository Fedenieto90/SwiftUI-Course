//
//  AddOrderViewModel.swift
//  CoffeeOrderingCD
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class AddOrderViewModel: ObservableObject {
    
    var name: String = ""
    var type: String = "Regular"
    
    func saveOrder() {
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
    }
    
}
