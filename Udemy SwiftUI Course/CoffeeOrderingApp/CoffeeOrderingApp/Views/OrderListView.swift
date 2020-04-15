//
//  OrderListView.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    
    let orders : [OrderViewModel]
    
    init(orders: [OrderViewModel]) {
        self.orders = orders
    }
    
    var body: some View {
        List {
            ForEach(self.orders, id: \.id) { order in
                HStack {
                    Image(order.coffeeName)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .cornerRadius(16)
                    VStack(alignment: .leading) {
                        Text(order.name)
                            .font(.title)
                            .fontWeight(.bold)
                        Text(order.coffeeName)
                            .font(.body)
                            .fontWeight(.bold)
                        Text(order.size)
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.secondary)
                    }.padding([.leading], 10)
                }.padding([.top, .bottom], 10)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orders: [OrderViewModel(order: Order(name: "Fede", coffeeName: "Expresso", size: "Medium", total: 10.0))])
    }
}
