//
//  SunStateView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 01/05/2024.
//

import SwiftUI

struct SunStateView: View {
    var title: String
    var icon: String
    var time: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .padding()
            Image(systemName: icon)
                .symbolRenderingMode(.hierarchical)
            Text(time)
                .font(.system(size: 16, weight: .light, design: .rounded))
        }
    }
}

#Preview {
    SunStateView(title: "Sunrise", icon: "sun.max.fill", time: "4:54")
}
