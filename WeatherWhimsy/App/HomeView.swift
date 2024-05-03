//
//  MainView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("userTheme") private var userTheme: ThemeType = .light
    @State private var showingSettingsView: Bool = false
    
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
                            showingSettingsView.toggle()
                        }, label: {
                            Image(systemName: "gearshape")
                        })
                        .sheet(isPresented: $showingSettingsView, content: {
                            SettingsView()
                        })
                )
            }
            .preferredColorScheme(userTheme.colorScheme)
            .padding(.vertical, 16)
            .background(.colorBackground)
        }
    }
}

#Preview {
    HomeView()
}
