//
//  MainView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 16) {
                    WeatherCardView()
                    TemperatureCardView()
                    WheaterInformationView()
                    SunriseSunsetCardView()
                    FiveDayWeatherForecastCardView()
                }
                .navigationBarItems(
                    leading: NavigationBarLeadingView(city: "Tours"),
                    trailing:
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "gearshape")
                        })
                )
            }
            .padding(.vertical, 16)
            .background(Color("ColorBackground").ignoresSafeArea(.all))
        }
    }
}

#Preview {
    HomeView()
}
