//
//  WebService.swift
//  StocksApp
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class WebService {
    
    func getAllStocks(completion: @escaping ([Stock]?) -> ()) {
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/stocks") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            if let stocks = stocks {
                DispatchQueue.main.async {
                    completion(stocks)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
            
        }.resume()
        
        
    }
    
    func getAllArticles(completion: @escaping ([Article]?) -> ()) {
        guard let url = URL(string: "https://silicon-rhinoceros.glitch.me/top-news") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let articles = try? JSONDecoder().decode([Article].self, from: data)
            if let articles = articles {
                DispatchQueue.main.async {
                    completion(articles)
                }
            } else {
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
            
        }.resume()
        
        
    }
    
}
