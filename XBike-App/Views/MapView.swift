//
//  MapView.swift
//  XBike-App
//
//  Created by Playa on 01-09-22.
//

import Foundation
import SwiftUI

struct MapView: View {
    
    var body: some View {
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
                        
                    }, label: {
                        Image(systemName: "plus")
                            .foregroundColor(Color.white)
                            .font(.system(size: 24))
                            .padding()
                    })
                }
            }.frame(height: 50)
            
            List{
                RideView()
                
                RideView()
                
                RideView()
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
