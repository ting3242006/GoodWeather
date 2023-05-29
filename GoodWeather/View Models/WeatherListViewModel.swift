//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Ting on 2022/12/25.
//

import Foundation

class WeatherListViewModel {
    
    // array
    private var weatherViewModels = [WeatherViewModel]()
    
    func addWeatherViewModel(_ vm: WeatherViewModel) {
        weatherViewModels.append(vm)
    }
    
    func numberOfRows(_ section: Int) -> Int {
        weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel {
        weatherViewModels[index]
    }
    
    func updateUnit(to unit: Unit) {
        switch unit {
        case .celsius:
            toCelsius()
        case .fahrenheit:
            toFahrenheit()
        }
    }
    
    private func toCelsius() {
        
        weatherViewModels = weatherViewModels.map({ vm in
            let weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature - 32) * 5 / 9
            return weatherModel
        })
    }
    
    private func toFahrenheit() {
        
        weatherViewModels = weatherViewModels.map({ vm in
            let weatherModel = vm
            weatherModel.temperature = (weatherModel.temperature * 9 / 5) + 32
            return weatherModel
        })
    }
}

class WeatherViewModel {
    
    let weather: WeatherResponse
    var temperature: Double
    
    init(weather: WeatherResponse) {
        self.weather = weather
        temperature = weather.main.temp
    }
    
    var city: String {
        return weather.name
    }
}
