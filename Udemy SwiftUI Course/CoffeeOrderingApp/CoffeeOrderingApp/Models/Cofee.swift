//
//  Cofee.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

struct Coffee {
    
    let name: String
    let imageUrl: String
    let price: Double
    
}

extension Coffee {
    
    static func all() -> [Coffee] {
        return [Coffee(name: "Capuccino", imageUrl: "Capuccino", price: 10.0),
                Coffee(name: "Expresso", imageUrl: "Expresso", price: 10.0),
                Coffee(name: "Regular", imageUrl: "Regular", price: 10.0)]
    }
}
