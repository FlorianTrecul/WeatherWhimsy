//
//  WheaterInformationView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct WheaterInformationView: View {
    let windSpeed: String
    let humidity: String
    
    var body: some View {
        HStack {
            InformationCardView(title: "Wind speed", icon: "wind", information: "\(windSpeed)km/h")
                .padding(.leading)
            InformationCardView(title: "Humidity", icon: "humidity.fill", information: "\(humidity)%")
                .padding(.trailing)
        }
        .backgroundStyle(.colorCard.opacity(0.4))
    }
}

#Preview {
    WheaterInformationView(windSpeed: "8.5", humidity: "52")
}
