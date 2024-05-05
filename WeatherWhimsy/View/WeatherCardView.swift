//
//  WeatherCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct WeatherCardView: View {
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        GroupBox {
            HStack {
                VStack(alignment: .leading) {
                    Text("Tuesday 25, july")
                        .font(.system(size: 12, weight: .light, design: .rounded))
                    Text("Clear and Sunny")
                        .font(.system(size: 16, weight: .bold, design: .rounded))
                    Spacer()
                    HStack(alignment: .top, spacing: 0) {
                        Text("23")
                            .font(.system(size: 56, weight: .bold, design: .rounded))
                        Text("°C")
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
                            .frame(width: 120, height: 120)
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
    WeatherCardView()
        .environment(AppState.shared)
}
