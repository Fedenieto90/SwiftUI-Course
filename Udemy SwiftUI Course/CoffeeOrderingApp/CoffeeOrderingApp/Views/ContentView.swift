//
//  ContentView.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationView {
            OrderListView(orders: orderListVM.orders)
            .navigationBarTitle("Orders")
                .navigationBarItems(trailing: Button(action: showAddCoffeeOrderView) {
                    Image(systemName: "plus")
                })
                .sheet(isPresented: self.$showModal) {
                    AddCoffeeOrderView(isPresented: self.$showModal)
            }
        }
    }
    
    private func showAddCoffeeOrderView() {
        self.showModal = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
