//
//  HomeScreen.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct HomeScreen: View {
    @AppStorage("userTheme") private var userTheme: ThemeType = .light
    @AppStorage("unit") private var unit: UnitType = .standard
    
    @State private var showingSettingsScreen: Bool = false
    @State private var weather: ResponseBody?
    
    @Environment(AppState.self) private var appState: AppState
    
    let locationManager = LocationManager.shared
    let weatherManager = WeatherManager.shared
    
    @State private var response: ResponseBody?
    
    private func fetchWeather(location: Location) async {
        do {
            response = try await weatherManager.fetchWeather(location: location)
            if let response = response {
                print(response)
                appState.weatherConditionsType = appState.weatherConditionsType.getWeatherConditionsType(code: response.weather.first?.id ?? 0)
            }
        } catch {
            print(error)
        }
    }
    
    var body: some View {
        @Bindable var appState = appState
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                if let response = response {
                    VStack(spacing: 16) {
                        WeatherCardView(description: response.weather.first?.description ?? "Unknown", temperature: String(Int(response.main.temperature)))
                        TemperatureCardView(feelsLike: String(Int(response.main.feelsLike)), temperatureMaximum: String(Int(response.main.temperatureMaximum)), temperatureMinimum: String(Int(response.main.temperatureMinimum)))
                        WheaterInformationView(windSpeed: String(response.wind.speed), humidity: String(response.main.humidity))
                        SunriseSunsetCardView(sunrise: response.sys.sunrise, sunset: response.sys.sunset)
                        FiveDayWeatherForecastCardView()
                    }
                    .navigationBarItems(
                        leading: NavigationBarLeadingView(city: response.name),
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
                    .toolbarBackground(appState.weatherConditionsType.backgroundColor.gradient, for: .navigationBar)
                }
            }
            .background(appState.weatherConditionsType.backgroundColor.gradient)
        }
        .preferredColorScheme(userTheme.colorScheme)
        .padding(.vertical, 16)
        .onAppear {
            locationManager.locationUpdateHandler = { newLocation in
                Task {
                    await fetchWeather(location: newLocation)
                }
            }
        }
        .background(appState.weatherConditionsType.backgroundColor.gradient)
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
            .environment(AppState.shared)
    }
}
