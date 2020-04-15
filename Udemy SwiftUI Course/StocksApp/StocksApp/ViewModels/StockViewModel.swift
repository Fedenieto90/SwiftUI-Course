//
//  StockViewModel.swift
//  StocksApp
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

struct StockViewModel {
    
    var id = UUID()
    
    private var stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    var symbol: String {
        return stock.symbol
    }
    
    var priceString: String {
        return String(format: "$%.f", stock.price)
    }
    
    var price: Double {
        return stock.price
    }
    
    var change: String {
        return stock.change
    }
    
    var description: String {
        return stock.description
    }
    
    var changeIsUp: Bool {
        return stock.change.contains("+")
    }
    
}
