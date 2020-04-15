//
//  ContentView.swift
//  GoodWeather
//
//  Created by Federico Nieto on 09/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter city name", text: $weatherVM.cityName) {
                    self.weatherVM.search()
                }
                    .padding()
                    .font(.largeTitle)
                Text(weatherVM.temperature)
                    .font(.title)
            }
            .navigationBarTitle("Weather")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
