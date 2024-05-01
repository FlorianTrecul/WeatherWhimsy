//
//  WheaterInformationView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct WheaterInformationView: View {
    var body: some View {
        HStack {
            InformationCardView(title: "Wind speed", icon: "wind", information: "8.5km/h")
                .padding(.leading)
            InformationCardView(title: "Humidity", icon: "humidity", information: "52%")
                .padding(.trailing)
        }
    }
}

#Preview {
    WheaterInformationView()
}
