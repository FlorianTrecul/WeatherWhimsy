//
//  HeaderView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct HeaderView: View {
    var city: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle")
                .foregroundColor(Color(.label))
                .imageScale(.large)
            Text(city)
                .foregroundColor(Color(.label))
                .fontWeight(.bold)
            Spacer()
            Image(systemName: "gearshape")
                .foregroundColor(Color(.label))
                .imageScale(.large)
        }
        .padding()
    }
}

#Preview {
    HeaderView(city: "Tours")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
