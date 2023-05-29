//
//  WeatherResponse .swift
//  GoodWeather
//
//  Created by Ting on 2022/12/19.
//

import Foundation

struct WeatherResponse: Decodable {
    let name: String
    let main: Weather
}

struct Weather: Codable {
    let temp: Double
    let humidity: Double
}
