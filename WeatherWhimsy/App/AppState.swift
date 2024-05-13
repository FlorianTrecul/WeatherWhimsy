//
//  AppState.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 05/05/2024.
//

import Foundation
import Observation

@Observable class AppState {
    static let shared = AppState()
    
    var weatherConditionsType: WeatherConditionsType = .clouds
}
