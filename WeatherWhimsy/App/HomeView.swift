//
//  MainView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HeaderView(city: "Tours")
            WeatherCardView()
            TemperatureCardView()
            WheaterInformationView()
            Spacer()
        }
        .background(Color("ColorBackground"))
    }
}

#Preview {
    HomeView()
}
