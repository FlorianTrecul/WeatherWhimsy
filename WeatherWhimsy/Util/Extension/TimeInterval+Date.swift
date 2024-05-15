//
//  TimeInterval+Date.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 14/05/2024.
//

import Foundation

extension TimeInterval {
    func convertTimeIntervalToTime() -> String {
        let date = Date(timeIntervalSince1970: self)

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"

        return dateFormatter.string(from: date)
    }
}
