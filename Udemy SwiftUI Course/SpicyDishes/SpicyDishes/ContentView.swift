//
//  ContentView.swift
//  SpicyDishes
//
//  Created by Federico Nieto on 09/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSpicyDishesOnly = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showSpicyDishesOnly) {
                    Text("Spicy")
                }
                ForEach(getFilteredDishes()) { dish in
                    DishCell(dish: dish)
                }
            }
            .navigationBarTitle("Dishes")
        }
    }
    
    func getFilteredDishes() -> [Dish] {
        if !showSpicyDishesOnly {
            return Dish.all()
        }
        return Dish.all().filter { (dish) -> Bool in
            dish.isSpicy == true
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DishCell: View {
    let dish: Dish
    var body: some View {
        HStack {
            Image(dish.imageUrl)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            Text(dish.name)
                .font(.headline)
            Spacer()
            if dish.isSpicy {
                Image("spicy")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
        }
    }
}
