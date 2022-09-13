//
//  XBike_AppApp.swift
//  XBike-App
//
//  Created by Playa on 31-08-22.
//

import SwiftUI
import GoogleMaps
import GooglePlaces

@main
struct XBike_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        GMSServices.provideAPIKey("API-KEY")
        GMSPlacesClient.provideAPIKey("API-KEY")
        return true
    }
}
