//
//  API+Extensions.swift
//  WeatherApp
//
//  Created by unthinkable-mac-0025 on 16/07/22.
//

import Foundation

extension Api {
    static let baseUrl = "https://api.openweathermap.org/data/2.5/"
    
    static func getUrlFor(lat: Double, lon: Double) -> String {
        return "\(baseUrl)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=metric"
    }
}
