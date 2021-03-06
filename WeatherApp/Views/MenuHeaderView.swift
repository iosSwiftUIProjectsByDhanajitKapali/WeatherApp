//
//  MenuHeaderView.swift
//  WeatherApp
//
//  Created by unthinkable-mac-0025 on 17/07/22.
//

import SwiftUI

struct MenuHeader: View {
    
    @ObservedObject var cityViewModel: CityViewModel
    
    @State private var searchTerm = "Delhi"
    
    var body: some View {
        HStack {
            TextField("", text: $searchTerm)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
            
            Button {
                cityViewModel.city = searchTerm
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                    
                    Image(systemName: "location.fill")
                }
            }
            .frame(width: 50, height: 50)
        }
        .foregroundColor(.white)
        .padding()
        .background(ZStack(alignment: .leading) {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.leading, 10)
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue.opacity(0.5))
        })
    }
}

struct MenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        MenuHeader(cityViewModel: CityViewModel())
    }
}
