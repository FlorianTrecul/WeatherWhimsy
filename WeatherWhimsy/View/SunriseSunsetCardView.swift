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
                SunStateView(title: "Sunrise", icon: "sun.max.fill", time: "4:54")
                Spacer()
                SunStateView(title: "Sunset", icon: "moon.fill", time: "21:18")
            }
            .frame(maxWidth: .infinity)
        }
        .padding(.horizontal)
        .backgroundStyle(Color("ColorCard"))
    }
}

#Preview {
    SunriseSunsetCardView()
        .previewLayout(.fixed(width: 375, height: 60))
}
