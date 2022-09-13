//
//  MapViewControllerBridge.swift
//  XBike-App
//
//  Created by Playa on 12-09-22.
//

import SwiftUI
import GoogleMaps


struct GoogleMapsView: UIViewRepresentable {
    
    @ObservedObject var locationManager = LocationManager()
    private let zoom: Float = 15.0
    
    func makeUIView(context: Self.Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(withLatitude: locationManager.latitude, longitude: locationManager.longitude, zoom: zoom)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        mapView.isMyLocationEnabled = true
        return mapView
    }
    
    func updateUIView(_ mapView: GMSMapView, context: Context) {
        mapView.animate(toLocation: CLLocationCoordinate2D(latitude: locationManager.latitude, longitude: locationManager.longitude))
    }
}

struct MapViewControllerBridge_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapsView()
    }
}
