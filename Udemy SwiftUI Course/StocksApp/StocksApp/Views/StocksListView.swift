//
//  StocksListView.swift
//  StocksApp
//
//  Created by Federico Nieto on 14/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct StocksListView: View {
    
    var stocks: [StockViewModel]
    
    var body: some View {
        
        return List {
            ForEach(stocks, id: \.id) { stock in
                HStack {
                    VStack(alignment: .leading) {
                        Text(stock.symbol)
                            .fontWeight(.bold)
                        Spacer()
                        Text(stock.description)
                            .fontWeight(.semibold)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text(stock.priceString)
                            .fontWeight(.semibold)
                        Spacer()
                        Text(stock.change)
                            .fontWeight(.semibold)
                            .padding(5)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .background(stock.changeIsUp ? Color.green : Color.red)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                }.padding([.top, .bottom], 10.0)
            }
        }
    }
}

struct StocksListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StocksListView(stocks: [StockViewModel(stock: Stock(symbol: "Test", description: "Test desc", price: 10.0, change: "+100"))])
        }
        
    }
}
