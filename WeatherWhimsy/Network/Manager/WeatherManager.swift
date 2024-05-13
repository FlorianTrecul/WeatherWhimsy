//
//  WeatherManager.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 07/05/2024.
//

import SwiftUI
import CoreLocation

class WeatherManager {
    static let shared = WeatherManager()
    
    @AppStorage("unit") private var unit: UnitType = .standard
    
    func fetchWeather(location: Location) async throws -> ResponseBody {
        let (data, response) = try await URLSession.shared.data(from: APIEndpoint.endpointURL(for: .weatherByLocation(location.lat, location.lon, unit.rawValue)))
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidReponse
        }
        
        let weatherResponse = try JSONDecoder().decode(ResponseBody.self, from: data)
        return weatherResponse
    }
    
}
