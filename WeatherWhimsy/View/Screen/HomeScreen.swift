//
//  HomeScreen.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct HomeScreen: View {
    @AppStorage("userTheme") private var userTheme: ThemeType = .light
    
    @State private var showingSettingsScreen: Bool = false
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        NavigationStack {
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
                            showingSettingsScreen.toggle()
                        }, label: {
                            Image(systemName: "gearshape")
                        })
                        .sheet(isPresented: $showingSettingsScreen, content: {
                            SettingsScreen()
                        })
                )
            }
            .preferredColorScheme(userTheme.colorScheme)
            .padding(.vertical, 16)
            .background(appState.weatherConditionsType.backgroundColor.gradient)
        }
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
            .environment(AppState.shared)

    }
}
