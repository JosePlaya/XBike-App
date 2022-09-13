//
//  MapView.swift
//  XBike-App
//
//  Created by Playa on 01-09-22.
//

import Foundation
import SwiftUI

struct MapView: View {
    
    @ObservedObject var timerController = TimerController()
    
    @State var newRide: Bool = false
    @State var finishRide: Bool = false
    @State var rideStored: Bool = false
    
    var body: some View {
        ZStack{
            // Map
            VStack{
                ZStack{
                    HStack(alignment: .center){
                        Text("Current Ride")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                    }
                    
                    HStack(alignment: .lastTextBaseline){
                        Spacer()
                        Button(action: {
                            newRide.toggle()
                        }, label: {
                            Image(systemName: "plus")
                                .foregroundColor(Color.white)
                                .font(.system(size: 24))
                                .padding()
                        })
                    }
                }.frame(height: 50)
                
                // Map
                GoogleMapsView()
                    .edgesIgnoringSafeArea(.top)
            }
            
            // Dialog: new ride
            if newRide{
                VStack{
                    Spacer()
                    NewRideDialog(show: $newRide, showNextView: $finishRide, isTimerRunning: $timerController.isRunning, progressTime: $timerController.progressTime)
                }
            }
            // Dialog: finish ride
            if finishRide{
                VStack{
                    StopRideDialog(show: $showNextView, finalTime: $progressTime)
                }
            }
            // Dialog: confirm ride stored
            if rideStored{
                VStack{
                    ConfirmSaveDialog(show: $newRide)
                }
            }
        }
        .background(Color.orange)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
