//
//  Main.swift
//  XBike-App
//
//  Created by Playa on 01-09-22.
//

import Foundation
import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView{
            // Map view
           MapView()
                .tabItem {
                            Label("Current Ride", systemImage: "square")
                        }
            
            // Progress view
            ProgressView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("My Progress")
                }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}
