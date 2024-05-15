//
//  TemperatureCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct TemperatureCardView: View {
    let feelsLike: String
    let temperatureMaximum: String
    let temperatureMinimum: String

    @AppStorage("unit") private var unit: UnitType = .standard
    
    var body: some View {
        GroupBox {
            HStack {
                InformationView(title: "Feels like", icon: "thermometer.medium", information: "\(feelsLike)\(unit.symbol)")
                Spacer()
                InformationView(title: "Maximum", icon: "thermometer.high", information: "\(temperatureMaximum)\(unit.symbol)")
                Spacer()
                InformationView(title: "Minimum", icon: "thermometer.low", information: "\(temperatureMinimum)\(unit.symbol)")
            }
        }
        .padding(.horizontal)
        .backgroundStyle(.colorCard.opacity(0.4))
    }
}

#Preview {
    TemperatureCardView(feelsLike: "18", temperatureMaximum: "12", temperatureMinimum: "26")
}
