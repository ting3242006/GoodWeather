//
//  Constants.swift
//  GoodWeather
//
//  Created by Ting on 2022/12/20.
//

import Foundation

struct Constants {
    
    struct Urls {
        
        static func urlForWeatherByCity(city: String) -> URL {
            
            // get the default settings for temprature
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=3b2b727479adc7c07db5d00f1b08d3dd&units=\(unit)")!
        }
    }
}
