//
//  CityView.swift
//  WeatherApp
//
//  Created by unthinkable-mac-0025 on 17/07/22.
//

import SwiftUI

struct City: View {
    @ObservedObject var cityViewModel: CityViewModel
    
    var body: some View {
        VStack {
            CityNameView(city: cityViewModel.city, date: cityViewModel.date)
                .shadow(radius: 0)
            TodayWeather(cityViewModel: cityViewModel)
                .padding()
            HourlyWeather(cityViewModel: cityViewModel)
                .padding(.horizontal)
            DailyWeather(cityViewModel: cityViewModel)
                .padding(.horizontal)
        }.padding(.bottom, 30)
    }
}

struct City_Previews: PreviewProvider {
    static var previews: some View {
        City(cityViewModel: CityViewModel())
    }
}
