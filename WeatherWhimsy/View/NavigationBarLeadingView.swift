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
                .foregroundColor(Color(.label))
                .imageScale(.large)
            Text(city)
                .foregroundColor(Color(.label))
                .fontWeight(.bold)
        }
    }
}

#Preview {
    NavigationBarLeadingView(city: "Tours")
}
