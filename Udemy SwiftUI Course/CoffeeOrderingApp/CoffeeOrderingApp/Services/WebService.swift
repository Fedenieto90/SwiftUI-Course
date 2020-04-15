//
//  WebService.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class WebService {
    
    private struct Constants {
        static let ordersUrl = "https://island-bramble.glitch.me/orders"
    }
    
    func getAllOrders(completion: @escaping ([Order]?) -> ()) {
        guard let url = URL(string: Constants.ordersUrl) else {
            completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            if let orders = try? JSONDecoder().decode([Order].self, from: data) {
                DispatchQueue.main.async {
                    completion(orders)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
            
        }.resume()
    }
    
    func createOrder(order: Order, completion: @escaping (CreateOrderResponse?) -> ()) {
        guard let url = URL(string: Constants.ordersUrl) else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try? JSONEncoder().encode(order)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            let createOrderResponse = try? JSONDecoder().decode(CreateOrderResponse.self, from: data)
            DispatchQueue.main.async {
                completion(createOrderResponse)
            }
        }.resume()
        
    }
    
}
