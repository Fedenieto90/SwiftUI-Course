//
//  Order.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

struct Order: Codable {
    
    let name: String
    let coffeeName: String
    let size: String
    let total: Double
    
}
