//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Ting on 2022/12/20.
//

import Foundation

// 為了讓輸入的字串可以符合url格式
extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}

