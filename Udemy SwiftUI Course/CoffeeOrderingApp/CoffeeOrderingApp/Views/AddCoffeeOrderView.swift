//
//  AddCoffeeOrderView.swift
//  CoffeeOrderingApp
//
//  Created by Federico Nieto on 10/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    
    @Binding var isPresented: Bool
    @ObservedObject var addCoffeeOrderVM = AddCoffeeOrderViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("INFORMATION").font(.body)) {
                        TextField("Enter Name", text: self.$addCoffeeOrderVM.name)
                    }
                    Section(header: Text("SELECT COFFEE").font(.body)) {
                        ForEach(addCoffeeOrderVM.coffeeList, id: \.name) { coffee in
                            CoffeeCellView(coffee: coffee, selection: self.$addCoffeeOrderVM.coffeeName)
                        }
                    }
                    Section(header: Text("SELECT SIZE").font(.body), footer: OrderTotalView(total: self.addCoffeeOrderVM.total)) {
                        Picker("", selection: self.$addCoffeeOrderVM.size) {
                            Text("Small").tag("Small")
                            Text("Medium").tag("Medium")
                            Text("Large").tag("Large")
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                }
                
                Button("Place Order") {
                    self.addCoffeeOrderVM.placeOrder()
                    self.isPresented.toggle()
                }.padding([.top, .bottom], 20)
                    .padding([.leading, .trailing], 100)
                    .foregroundColor(.white)
                    .font(.headline)
                    .background(Color.green)
                    .cornerRadius(12)
            }
            .navigationBarTitle("Add Order")
        }
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView(isPresented: .constant(false))
    }
}

struct CoffeeCellView: View {
    let coffee: CoffeeViewModel
    @Binding var selection: String
    var body: some View {
        HStack {
            Image(coffee.imageUrl)
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(16)
                .aspectRatio(contentMode: .fit)
            Text(coffee.name)
                .font(.title)
                .padding([.leading], 10)
            Spacer()
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "" ).padding().frame(width: 20, height: 5).foregroundColor(.green)
        }.onTapGesture {
            self.selection = self.coffee.name
        }
    }
}
