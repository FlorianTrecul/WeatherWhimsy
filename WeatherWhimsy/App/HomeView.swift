//
//  MainView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HeaderView(city: "Tours")
                WeatherCardView()
                TemperatureCardView()
                WheaterInformationView()
                SunriseSunsetCardView()
                FiveDayWeatherForecastCardView()
            }
        }
        .background(Color("ColorBackground").ignoresSafeArea(.all))
    }
}

#Preview {
    HomeView()
}
