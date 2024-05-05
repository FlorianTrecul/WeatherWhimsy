//
//  ContentView.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 29/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        HomeScreen()
    }
}

#Preview {
    ContentView()
        .environment(AppState.shared)
}
