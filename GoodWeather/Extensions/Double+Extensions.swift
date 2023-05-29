//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Ting on 2023/1/26.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0fº", self)
    }
}

