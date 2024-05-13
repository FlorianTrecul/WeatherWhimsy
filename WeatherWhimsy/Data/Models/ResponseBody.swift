//
//  ResponseBody.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 06/05/2024.
//

import Foundation

struct ResponseBody: Decodable {
    let weather: [WeatherResponse]
    let main: MainResponse
    let wind: WindRespone
    let name: String
}

struct WeatherResponse: Decodable {
    let id: Int
    let main: String
    let description: String
}

struct MainResponse: Decodable {
    let temperature: Double
    let feelsLike: Double
    let temperatureMinimum: Double
    let temperatureMaximum: Double
    let humidity: Int
    
    enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case feelsLike = "feels_like"
        case temperatureMinimum = "temp_min"
        case temperatureMaximum = "temp_max"
        case humidity
    }
}

struct WindRespone: Decodable {
    let speed: Double
}
