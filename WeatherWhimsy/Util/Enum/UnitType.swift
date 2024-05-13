//
//  MetricType.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 03/05/2024.
//

import Foundation

enum UnitType: String, CaseIterable {
    case metric
    case imperial
    case standard
}

extension UnitType {
    var title: String {
        switch self {
        case .metric:
            return "Celsius"
        case .imperial:
            return "Fahrenheit"
        case .standard:
            return "Kelvin"
        }
    }
    
    var symbol: String {
        switch self {
        case .metric:
            return "°C"
        case .imperial:
            return "°F"
        case .standard:
            return "K"
        }
    }
}

