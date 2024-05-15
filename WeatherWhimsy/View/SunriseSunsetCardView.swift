//
//  SunriseSunsetCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 01/05/2024.
//

import SwiftUI

struct SunriseSunsetCardView: View {
    let sunrise: TimeInterval
    let sunset: TimeInterval
    
    var body: some View {
        GroupBox {
            HStack {
                HStack {
                    SunStateView(title: "Sunrise", icon: "sunrise.fill", time: sunrise.convertTimeIntervalToTime())
                    Spacer()
                }
                HStack {
                    SunStateView(title: "Sunset", icon: "sunset.fill", time: sunset.convertTimeIntervalToTime())
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal)
        .backgroundStyle(.colorCard.opacity(0.4))
    }
}

#Preview {
    SunriseSunsetCardView(sunrise: 1715660506, sunset: 1715714747)
}
