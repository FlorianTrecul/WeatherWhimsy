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
    var information: String
    
    var body: some View {
        GroupBox {
            HStack {
                InformationView(title: title, icon: icon, information: information)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .backgroundStyle(Color("ColorCard"))
    }
}

#Preview {
    InformationCardView(title: "Feels like", icon: "thermometer.medium", information: "18°C")
}
