//
//  DailyWeather.swift
//  WeatherApp
//
//  Created by unthinkable-mac-0025 on 16/07/22.
//

import Foundation

struct  WeatherDaily: Codable, Identifiable {
    var dt: Int
    var temp: Temperature
    var weather: [WeatherDetail]
    
    enum CodingKey: String {
        case dt
    case temp
    case weather
    }
    
    init() {
        dt = 0
        temp = Temperature(min: 0.0, max: 0.0)
        weather = [WeatherDetail(main: "", description: "", icon: "")]
    }
}

extension WeatherDaily {
    var id: UUID {
        return UUID()
    }
}
