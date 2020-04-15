//
//  AddOrderView.swift
//  CoffeeOrderingCD
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct AddOrderView: View {
   
    @ObservedObject var addOrderVM = AddOrderViewModel()
    
    var body: some View {
        VStack {
            TextField("Insert name", text: self.$addOrderVM.name)
                .fixedSize()
                .padding()
            Picker(selection: self.$addOrderVM.type, label: Text("")) {
                Text("Regular").tag("Regular")
                Text("Capuccino").tag("Capuccino")
                Text("Expresso").tag("Expresso")
            }.pickerStyle(SegmentedPickerStyle())
            
            Button("Place Order") {
                self.addOrderVM.saveOrder()
            }.padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(16)
                .shadow(radius: 10)
                .padding(.top, 50)
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView()
    }
}
