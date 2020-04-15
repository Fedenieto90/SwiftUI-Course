//
//  WeatherViewModel.swift
//  GoodWeather
//
//  Created by Federico Nieto on 09/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    private var weatherService: WeatherService!
    @Published var weather = Weather()
    var cityName: String = ""
    
    init() {
        weatherService = WeatherService()
    }
    
    var temperature: String {
        if let temp = weather.temp {
            return String(temp)+" °C"
        } else {
            return ""
        }
    }
    
    var humidity: String {
        if let humidity = weather.humidity {
            return String(humidity)
        } else {
            return ""
        }
    }
    
    func search() {
        if let city = cityName.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) {
            fetchWeather(by: city)
        }
    }
    
    func fetchWeather(by city: String) {
        weatherService.getWeather(city: city) { weather in
            if let weather = weather {
                DispatchQueue.main.async {
                    self.weather = weather
                }
            }
        }
    }
    
}
