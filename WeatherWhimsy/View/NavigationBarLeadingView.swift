//
//  HeaderView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct NavigationBarLeadingView: View {
    var city: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "mappin.circle")
                .foregroundStyle(Color(.label))
                .imageScale(.large)
            Text(city)
                .foregroundStyle(Color(.label))
                .fontWeight(.bold)
        }
    }
}

#Preview {
    NavigationBarLeadingView(city: "Tours")
}
