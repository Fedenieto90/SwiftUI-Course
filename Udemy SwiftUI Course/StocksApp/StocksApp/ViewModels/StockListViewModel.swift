//
//  StockListViewModel.swift
//  StocksApp
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation
import SwiftUI

class StockListViewModel: ObservableObject {
    
    @Published var stocks = [StockViewModel]()
    @Published var searchTerm: String = ""
    @Published var dragOffset: CGSize = CGSize(width: 0.0, height: 680)
    
    let webService: WebService
    
    init() {
        webService = WebService()
        fetchAllStocks()
    }
    
    func fetchAllStocks() {
        webService.getAllStocks { stocks in
            if let stocks = stocks {
                self.stocks = stocks.map(StockViewModel.init)
            }
        }
    }
    
}
