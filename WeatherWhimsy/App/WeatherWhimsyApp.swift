//
//  WeatherWhimsyApp.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

@main
struct WeatherWhimsyApp: App {
    
    @State private var appState = AppState.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appState)
        }
    }
}
