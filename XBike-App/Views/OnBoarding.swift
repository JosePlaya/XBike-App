//
//  OnBoarding.swift
//  XBike-App
//
//  Created by Playa on 01-09-22.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    @Binding var showOnboarding: Bool
    
    var body: some View {
        TabView{
            // Firs view
            OnboardingPageView(showOnboarding: $showOnboarding,
                               text: "Extremely simple to use",
                               imagenUrl: "https://img.icons8.com/color/96/000000/easy.png",
                               showDimissBtn: false)
            // Second view
            OnboardingPageView(showOnboarding: $showOnboarding,
                               text: "Track your time and distance",
                               imagenUrl: "https://img.icons8.com/ios/100/000000/track-order.png",
                               showDimissBtn: false)
            // Third view
            OnboardingPageView(showOnboarding: $showOnboarding,
                               text: "See your progress and challenge your self!",
                               imagenUrl: "https://img.icons8.com/ios/100/000000/combo-chart--v1.png",
                               showDimissBtn: true)
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.orange)
    }
}

struct OnboardingPageView: View {
    @Binding var showOnboarding: Bool
    let text: String
    let imagenUrl: String
    let showDimissBtn: Bool
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: imagenUrl))
                .frame(width: 100, height: 100)
                .padding()
            
            Text(text)
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
            
            if showDimissBtn {
                Button(action: {
                    showOnboarding.toggle()
                }, label: {
                    Text("Go to action!")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
            }
        }
    }
}
