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
        VStack{
            TabView {
                // Map view
               MapView()
                    .tabItem {
                        Label("Current Ride", systemImage: "bicycle")
                    }
                
                // Progress view
                ProgressView()
                    .tabItem {
                        Label("My Progress", systemImage: "person.crop.circle.fill")
                    }
            }
        }
        .background(Color.white)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
