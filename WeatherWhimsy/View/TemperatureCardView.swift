//
//  TemperatureCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct TemperatureCardView: View {
    var body: some View {
        GroupBox {
            HStack {
                InformationView(title: "Feels like", icon: "thermometer.medium", information: "18°C")
                Spacer()
                InformationView(title: "Maximum", icon: "thermometer.high", information: "26°C")
                Spacer()
                InformationView(title: "Minimum", icon: "thermometer.low", information: "12°C")
            }
        }
        .padding(.horizontal)
        .backgroundStyle(Color("ColorCard"))
    }
}

#Preview {
    TemperatureCardView()
}
