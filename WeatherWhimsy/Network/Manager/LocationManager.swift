//
//  LocationManager.swift
//  WeatherWhimsy
//
//  Created by Florian Trecul on 07/05/2024.
//

import Foundation
import CoreLocation

@Observable class LocationManager: NSObject, CLLocationManagerDelegate {
    static let shared = LocationManager()
    
    private let locationManager = CLLocationManager()
    private var locationUpdateTimer: Timer?
    private var lastLocation: CLLocationCoordinate2D?
    private var currentLocation: CLLocationCoordinate2D?
    
    var locationUpdateHandler: ((Location) -> Void)?
    
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        // Sets the minimum distance to 100 meters for location updates
        locationManager.distanceFilter = 100
        
        // Start timer for position updates every hour
        locationUpdateTimer = Timer.scheduledTimer(withTimeInterval: 3600, repeats: true) { [weak self] _ in
            self?.locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let tempLocation = locations.last else { return }
        self.lastLocation = tempLocation.coordinate
        
        if lastLocation != currentLocation {
            self.currentLocation = self.lastLocation
            if let currentLocation = currentLocation {
                locationUpdateHandler?(currentLocation.location)
            } else {
                print("Current location is nil")
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location manager failed with error: \(error)")
    }
}

extension CLLocationCoordinate2D: Equatable {
    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
    
    var location: Location {
        return Location(lat: self.latitude, lon: self.longitude)
    }
}
