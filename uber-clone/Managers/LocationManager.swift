//
//  LocationManager.swift
//  uber-clone
//
//  Created by Alana Price on 11/11/23.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.delegate = self
        
        // Gives most accurate possible location for a user location
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // Requests current user location
        locationManager.requestWhenInUseAuthorization()
        
        // Start updating user's location
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard locations.isEmpty else { return }
        locationManager.stopUpdatingLocation()
    }
    
}
