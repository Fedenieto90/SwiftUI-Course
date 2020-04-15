//
//  CoreDataManager.swift
//  CoffeeOrderingCD
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let shared = CoreDataManager(moc: NSManagedObjectContext.current)
    var moc: NSManagedObjectContext
    
    private init(moc: NSManagedObjectContext) {
        self.moc = moc
    }
    
    func saveOrder(name: String, type: String) {
        let order = Order(context: self.moc)
        order.name = name
        order.type = type
        do {
            try self.moc.save()
        } catch let error as NSError {
            print(error)
        }
    }
    
    func getAllOrders() -> [Order] {
        var orders = [Order]()
        let orderRequest: NSFetchRequest<Order> = Order.fetchRequest()
        do {
            orders = try self.moc.fetch(orderRequest)
        } catch let error as NSError {
            print(error)
        }
        return orders
    }
    
    private func fetchOrder(name: String) -> Order? {
        var orders = [Order]()
        let orderRequest: NSFetchRequest<Order> = Order.fetchRequest()
        orderRequest.predicate = NSPredicate(format: "name == %@", name)
        do {
            orders = try self.moc.fetch(orderRequest)
        } catch let error as NSError {
            print(error)
        }
        return orders.first
    }
    
    func deleteOrder(name: String) {
        do {
            if let order = fetchOrder(name: name) {
                self.moc.delete(order)
                try self.moc.save()
            }
        } catch let error as NSError {
            print(error)
        }
       
    }
    
}
