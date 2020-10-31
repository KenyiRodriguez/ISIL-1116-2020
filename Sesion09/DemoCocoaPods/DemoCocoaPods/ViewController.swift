//
//  ViewController.swift
//  DemoCocoaPods
//
//  Created by Kenyi Rodriguez on 10/23/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    @IBOutlet weak var mapVIew: GMSMapView!
    
    lazy var locationManager: CLLocationManager = {
       
        let locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.distanceFilter = 2000//Esta en metros
        locationManager.requestAlwaysAuthorization()
        locationManager.allowsBackgroundLocationUpdates = true
        locationManager.showsBackgroundLocationIndicator = false
        return locationManager
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.startUpdatingLocation()
        
        self.mapVIew.settings.myLocationButton = true
        self.mapVIew.settings.compassButton = true
        self.mapVIew.isMyLocationEnabled = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        if let userCoordinate = self.mapVIew.myLocation?.coordinate {
            let camera = GMSCameraPosition(target: userCoordinate, zoom: 16)
            self.mapVIew.animate(to: camera)
        }
    }
    
    func createMarkerAtPosition(_ coordinatePosition: CLLocationCoordinate2D) {
        
        let marker = GMSMarker(position: coordinatePosition) //se crear el pin
        marker.map = self.mapVIew// se agrega el pin al mapa
    }
    
}

extension ViewController: GMSMapViewDelegate {
    
    func mapView(_ mapView: GMSMapView, didLongPressAt coordinate: CLLocationCoordinate2D) {
        
        self.createMarkerAtPosition(coordinate)
    }
    
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
    
        marker.map = nil
        
        return true
    }
}


extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print("Cambio de ubicación")
    }
}

