//
//  SchemeType.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 02/05/2024.
//

import SwiftUI

enum ThemeType: String, CaseIterable {
    case system = "System"
    case light = "Light"
    case dark = "Dark"
    
    func color(scheme: ColorScheme) -> Color {
        switch self {
        case .system:
            return scheme == .dark ? .colorMoon: .colorSun
        case .light:
            return .colorSun
        case .dark:
            return .colorMoon
        }
    }
    
    var colorScheme: ColorScheme? {
        switch self {
        case .system:
            return nil
        case .light:
            return .light
        case .dark:
            return .dark
        }
    }
}
