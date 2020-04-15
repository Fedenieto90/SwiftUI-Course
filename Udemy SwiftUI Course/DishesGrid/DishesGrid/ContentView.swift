//
//  ContentView.swift
//  DishesGrid
//
//  Created by Federico Nieto on 08/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let dishes = Dish.all()
    var body: some View {
        let chunkedDishes = dishes.chunked(into: 3)
        return List {
            // Rows
            ForEach(0..<chunkedDishes.count) { index in
                HStack {
                    // Columns
                    ForEach(chunkedDishes[index]) { dish in
                        Image(dish.imageUrl)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
