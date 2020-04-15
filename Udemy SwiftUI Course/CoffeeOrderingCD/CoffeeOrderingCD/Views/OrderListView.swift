//
//  OrderListView.swift
//  CoffeeOrderingCD
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    
    @ObservedObject var orderListVM: OrderListViewModel
    @State var showModal: Bool = false
    
    init() {
        orderListVM = OrderListViewModel()
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(orderListVM.orders, id: \.name) { order in
                    HStack {
                        Image(order.type)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(16)
                            .aspectRatio(contentMode: .fit)
                        VStack(alignment: .leading) {
                            Text(order.name)
                                .fontWeight(.bold)
                            Text(order.type)
                        }
                    }
                }.onDelete(perform: delete)
            }
            .sheet(isPresented: self.$showModal, onDismiss: {
                self.orderListVM.fetchAllOrders()
            }, content: {
                AddOrderView()
            })
            .navigationBarTitle("Orders")
            .navigationBarItems(trailing: Button("Add Order") {
                self.showModal.toggle()
            })
        }
    }
    
    private func delete(at offsets: IndexSet) {
        offsets.forEach { index in
            let orderVM = self.orderListVM.orders[index]
            self.orderListVM.deleteOrder(orderVM)
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
