//
//  InformationCardView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 30/04/2024.
//

import SwiftUI

struct InformationView: View {
    var title: String
    var icon: String
    var information: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.system(size: 12, weight: .light, design: .rounded))
            HStack(alignment: .center) {
                Image(systemName: icon)
                    .symbolRenderingMode(.hierarchical)
                Text(information)
                    .font(.system(size: 16, weight: .bold, design: .rounded))
            }
        }
    }
}

#Preview {
    InformationView(title: "Feels like", icon: "thermometer.medium", information: "18°C")
}
