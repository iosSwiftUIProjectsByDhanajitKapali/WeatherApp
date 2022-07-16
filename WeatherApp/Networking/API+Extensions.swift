//
//  API+Extensions.swift
//  WeatherApp
//
//  Created by unthinkable-mac-0025 on 16/07/22.
//

import Foundation

extension API {
    static let baseURLString = "https://api.openweathermap.org/data/3.0/"
    
    static func getURLFor(lat : Double, lon : Double) -> String {
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
