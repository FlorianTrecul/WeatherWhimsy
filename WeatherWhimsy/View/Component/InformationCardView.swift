//
//  InformationCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct InformationCardView: View {
    var title: String
    var icon: String
    var temperature: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.system(size: 12, weight: .light, design: .rounded))
            HStack(alignment: .center) {
                Image(systemName: icon)
                    .symbolRenderingMode(.multicolor)
                Text(temperature)
                    .font(.system(size: 16, weight: .bold, design: .rounded))
            }
        }
        .padding()
    }
}

#Preview {
    InformationCardView(title: "Feels like", icon: "thermometer.medium", temperature: "18°C")
}
