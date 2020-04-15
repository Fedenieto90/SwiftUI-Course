//
//  OrderTotalView.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct OrderTotalView: View {
    let total: Double
    var body: some View {
        HStack(alignment: .bottom) {
            Spacer()
            Text(String(format: "$%.2f", total)).font(.title).foregroundColor(.green).fontWeight(.semibold)
            Spacer()
        }.padding(50)
    }
}

struct OrderTotalView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTotalView(total: 20.0).previewLayout(.sizeThatFits)
    }
}
