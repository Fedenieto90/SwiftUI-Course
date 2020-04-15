//
//  OrderListViewModel.swift
//  CoffeeOrderingCD
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchAllOrders()
    }
    
    func fetchAllOrders() {
        orders = CoreDataManager.shared.getAllOrders().map(OrderViewModel.init)
    }
    
    func deleteOrder(_ orderVM: OrderViewModel) {
        CoreDataManager.shared.deleteOrder(name: orderVM.name)
        fetchAllOrders()
    }
    
}

struct OrderViewModel {
    
    var name = ""
    var type = ""
    
    init(order: Order) {
        self.name = order.name!
        self.type = order.type!
    }
}
