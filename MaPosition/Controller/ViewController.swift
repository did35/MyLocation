//
//  ViewController.swift
//  MaPosition
//
//  Created by Didier Delhaisse on 30/07/2019.
//  Copyright © 2019 Didier Delhaisse. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    // MARK: - Properties

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Functions
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            // To do
        } else {
            // French
            myAlert(title: "Localisation", message: "Votre localisation n'est pas actif!")
        }
    }
    
    func myAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

}

// MARK: - Delegate methods extension

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // To do
    }
    

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // To do
    }
}

