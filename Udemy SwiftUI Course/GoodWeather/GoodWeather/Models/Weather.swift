//
//  Weather.swift
//  GoodWeather
//
//  Created by Federico Nieto on 09/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    var temp: Double?
    var humidity: Double?
}
