//
//  Dish.swift
//  DishesGrid
//
//  Created by Federico Nieto on 08/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation
import SwiftUI

struct Dish: Identifiable {
    
    let id = UUID()
    let name: String
    let price: Double
    let imageUrl: String
    
}

extension Dish {
    
    static func all() -> [Dish] {
        return [Dish(name: "Dish 1", price: 9, imageUrl: "dish1"),
                Dish(name: "Dish 2", price: 6, imageUrl: "dish2"),
                Dish(name: "Dish 1", price: 12, imageUrl: "dish1"),
                Dish(name: "Dish 2", price: 15, imageUrl: "dish2"),
                Dish(name: "Dish 1", price: 20, imageUrl: "dish1"),
                Dish(name: "Dish 2", price: 12, imageUrl: "dish2"),
                Dish(name: "Dish 1", price: 40, imageUrl: "dish1"),
                Dish(name: "Dish 2", price: 10, imageUrl: "dish2"),
                Dish(name: "Dish 2", price: 15, imageUrl: "dish2"),
                Dish(name: "Dish 1", price: 20, imageUrl: "dish1"),
                Dish(name: "Dish 2", price: 12, imageUrl: "dish2"),
                Dish(name: "Dish 1", price: 40, imageUrl: "dish1"),
                Dish(name: "Dish 2", price: 10, imageUrl: "dish2")
        ]
    }
    
}
