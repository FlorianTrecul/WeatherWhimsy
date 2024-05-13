//
//  WeatherConditionsType.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 04/05/2024.
//

import SwiftUI

enum WeatherConditionsType: String, CaseIterable {
    case thunderstorm
    case drizzle
    case rain
    case snow
    case atmosphere
    case clears
    case clouds
    
    func getWeatherConditionsType(code: Int) -> WeatherConditionsType {
        if code == 800 {
            return .clears
        }
        switch code/100 {
        case 2:
            return .thunderstorm
        case 3:
            return .drizzle
        case 5:
            return .rain
        case 6:
            return .snow
        case 7:
            return .atmosphere
        case 8:
            return .clouds
        default:
            return .clears
        }
    }
}

extension WeatherConditionsType {
    var icon: String {
        switch self {
        case .thunderstorm:
            return "cloud.bolt.fill"
        case .drizzle:
            return "cloud.drizzle.fill"
        case .rain:
            return "cloud.rain.fill"
        case .snow:
            return "cloud.snow.fill"
        case .atmosphere:
            return "cloud.fog.fill"
        case .clears:
            return "sun.max.fill"
        case .clouds:
            return "cloud.sun.fill"
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .thunderstorm:
            return .colorThunderstorm
        case .drizzle:
            return .colorDrizzle
        case .rain:
            return .colorRain
        case .snow:
            return .colorSnow
        case .atmosphere:
            return .colorMist
        case .clears:
            return .colorClear
        case .clouds:
            return .colorClouds
        }
    }
}
