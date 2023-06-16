//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Ting on 2022/12/11.
//

import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {

    @IBOutlet weak var cityNameTextField: UITextField!
    
    private var addWeatherVM = AddWeatherViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var delegate: AddWeatherDelegate?
    
    @IBAction func saveCityButtonPressed(_ sender: Any) {
        
//        if let city = cityNameTextField.text {
            
            if let city = cityNameTextField.text {
                addWeatherVM.addWeather(for: city) { (vm) in
                    self.delegate?.addWeatherDidSave(vm: vm)
                    self.dismiss(animated: true)
                }
            }
            
//            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&APPID=8647260436dfb5c6e177bd6364cb33d3&units=imperial")!
//
//            let weatherResource = Resource<Any>(url: weatherURL) { data in
//
//                return data
//            }
            
//            Webservice().load(resource: weatherResource) { result in
//
//            }
//        }
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
}
