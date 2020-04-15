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
    let isSpicy: Bool
    
}

extension Dish {
    
    static func all() -> [Dish] {
        return [Dish(name: "Pizza", price: 9, imageUrl: "dish1", isSpicy: true),
                Dish(name: "Sandwhich", price: 6, imageUrl: "dish2", isSpicy: true),
                Dish(name: "Pasta", price: 12, imageUrl: "dish1", isSpicy: false),
                Dish(name: "Ravioli", price: 15, imageUrl: "dish2", isSpicy: false),
                Dish(name: "Cheese", price: 20, imageUrl: "dish1", isSpicy: true),
                Dish(name: "Pepperoni", price: 12, imageUrl: "dish2", isSpicy: true)
        ]
    }
    
}

