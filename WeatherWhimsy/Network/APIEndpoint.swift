//
//  APIEndpoint.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 06/05/2024.
//

import Foundation

enum APIEndpoint {
    
    static let baseURL = "https://api.openweathermap.org"
    case weatherByLocation(Double, Double, String)
    
    private var path: String {
        switch self {
            
        case .weatherByLocation(let lat, let lon, let units):
            return "/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(Constants.Keys.weatherAPIKey)&units=\(units)"
        }
    }
    
    static func endpointURL(for endpoint: APIEndpoint) -> URL {
        let endpointPath = endpoint.path
        return URL(string: baseURL + endpointPath)!
    }
}
