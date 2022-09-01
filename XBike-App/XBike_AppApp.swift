//
//  XBike_AppApp.swift
//  XBike-App
//
//  Created by Playa on 31-08-22.
//

import SwiftUI

@main
struct XBike_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
