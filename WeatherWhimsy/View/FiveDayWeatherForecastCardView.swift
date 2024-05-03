//
//  FiveDayWeatherForecastCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 01/05/2024.
//

import SwiftUI

struct FiveDayWeatherForecastCardView: View {
    var body: some View {
        GroupBox {
            ForEach(0..<5) { item in
                FiveDayWeatherForecastItemView()
            }
            .padding(.vertical, 8)
        } label: {
            Label("5-day forecast", systemImage: "calendar")
        }
        .padding(.horizontal)
        .backgroundStyle(.colorCard)
    }
}

#Preview {
    FiveDayWeatherForecastCardView()
}
