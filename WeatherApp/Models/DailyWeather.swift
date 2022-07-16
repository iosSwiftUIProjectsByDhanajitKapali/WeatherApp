//
//  DailyWeather.swift
//  WeatherApp
//
//  Created by unthinkable-mac-0025 on 16/07/22.
//

import Foundation

struct DailyWeather : Codable, Identifiable {
    var dt : Int
    var temp : Temparature
    var weather : [WeatherDetail]
    
    enum CodingKey : String {
        case dt
        case temp
        case weather
    }
    
    init() {
        dt = 0
        temp = Temparature(min: 0, max: 0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}

extension DailyWeather {
    var id : UUID {
        return UUID()
    }
}
