//
//  ContentView.swift
//  XBike-App
//
//  Created by Playa on 31-08-22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @AppStorage("_*showOnboarding") var showOnboarding: Bool = true
    
    var body: some View {
        VStack(){
            MainView()
        }
        .fullScreenCover(isPresented: $showOnboarding, content: {
            OnboardingView(showOnboarding: $showOnboarding)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
