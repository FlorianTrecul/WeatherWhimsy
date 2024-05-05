//
//  FiveDayWeatherForecastItemView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 01/05/2024.
//

import SwiftUI

struct FiveDayWeatherForecastCellView: View {
    var body: some View {
        HStack {
            HStack(spacing: 4) {
                Text("25/07")
                    .font(.system(size: 14, weight: .light, design: .rounded))
                Text("Today")
                    .font(.system(size: 14, weight: .light, design: .rounded))
            }
            Spacer()
            HStack(spacing: 4) {
                Image(systemName: "sun.max.fill")
                Text("Thunderstrom")
                    .font(.system(size: 14, weight: .light, design: .rounded))
                    .lineLimit(1)
                Spacer()
            }
            .padding(.horizontal, 2)
            Spacer()
            Text("27°/10°")
                .font(.system(size: 14, weight: .semibold, design: .rounded))
        }
    }
}

#Preview {
    FiveDayWeatherForecastCellView()
}
