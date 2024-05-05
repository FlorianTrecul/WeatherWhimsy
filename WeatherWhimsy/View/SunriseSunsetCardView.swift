//
//  SunriseSunsetCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 01/05/2024.
//

import SwiftUI

struct SunriseSunsetCardView: View {
    var body: some View {
        
        GroupBox {
            HStack {
                HStack {
                    SunStateView(title: "Sunrise", icon: "sunrise.fill", time: "4:54")
                    Spacer()
                }
                HStack {
                    SunStateView(title: "Sunset", icon: "sunset.fill", time: "21:18")
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
    SunriseSunsetCardView()
}
