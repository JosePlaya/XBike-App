//
//  ProgressView.swift
//  XBike-App
//
//  Created by Playa on 01-09-22.
//

import Foundation
import SwiftUI

struct ProgressView: View {
    
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Text("My Progress")
                    .bold()
                    .foregroundColor(Color.white)
            }
            
            List{
                RideView()
                
                RideView()
                
                RideView()
            }
        }
        .background(Color.orange)
    }
}

struct RideView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text("00:00:00")
                    .font(.system(size: 32))
                    .padding(.vertical)
                
                Text("A: Av. Siempre Viva")
                
                Text("B: Av. Siempre Muerta")
            }
            VStack(alignment: .center){
                Text("20 km")
                    .font(.system(size: 32))
            }.padding()
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
