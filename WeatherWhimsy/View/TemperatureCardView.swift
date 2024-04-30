//
//  TemperatureCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct TemperatureCardView: View {
    var body: some View {
        HStack {
            InformationCardView(title: "Feels like", icon: "thermometer.medium", temperature: "18°C")
            Spacer()
            InformationCardView(title: "Maximum", icon: "thermometer.high", temperature: "26°C")
            Spacer()
            InformationCardView(title: "Minimum", icon: "thermometer.low", temperature: "12°C")
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color("ColorCard"))
        )
        .padding(.horizontal)
    }
}

#Preview {
    TemperatureCardView()
        .previewLayout(.fixed(width: 375, height: 60))
}
