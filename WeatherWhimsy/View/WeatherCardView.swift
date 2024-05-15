//
//  WeatherCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct WeatherCardView: View {
    let description: String
    let temperature: String
    
    @Environment(AppState.self) private var appState: AppState
    @AppStorage("unit") private var unit: UnitType = .standard
    
    var body: some View {
        GroupBox {
            HStack {
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Text("\(Date().formatted(Date.FormatStyle().weekday(.wide))),")
                        Text(Date(), style: .date)
                    }
                        .font(.system(size: 12, weight: .light, design: .rounded))
                    Text(description.capitalized)
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                    Spacer()
                    HStack(alignment: .top, spacing: 0) {
                        Text(temperature)
                            .font(.system(size: 56, weight: .bold, design: .rounded))
                        Text(unit.symbol)
                            .font(.system(size: 24, weight: .semibold, design: .rounded))
                            .offset(y: 8)
                    }
                    .offset(y: 10)
                }
                Spacer()
                VStack(alignment: .center, spacing: 20) {
                    ZStack {
                        Image(systemName: appState.weatherConditionsType.icon)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .symbolRenderingMode(.multicolor)
                    }
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
        }
        .padding(.horizontal)
        .backgroundStyle(.colorCard.opacity(0.4))
    }
}

#Preview {
    WeatherCardView(description: "broken clouds", temperature: "23")
        .environment(AppState.shared)
}
