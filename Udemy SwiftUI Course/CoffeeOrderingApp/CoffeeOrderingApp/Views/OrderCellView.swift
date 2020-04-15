//
//  OrderCellView.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 15/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct OrderCellView: View {
    let order: OrderViewModel
    var body: some View {
        HStack {
            Image(order.coffeeName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(order.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding([.bottom], 10)
                HStack {
                    Text(order.coffeeName)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(16)
                        .shadow(radius: 10)
                    Text(order.size)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(16)
                        .shadow(radius: 10)
                }
            }
        }
    }
}

struct OrderCellView_Previews: PreviewProvider {
    static var previews: some View {
        OrderCellView(order: OrderViewModel(order: Order(name: "Fede", coffeeName: "Capuccino", size: "Medium", total: 100))).previewLayout(.sizeThatFits)
    }
}
