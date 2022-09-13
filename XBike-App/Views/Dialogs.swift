//
//  NewRideDialog.swift
//  XBike-App
//
//  Created by Playa on 12-09-22.
//

import SwiftUI

struct NewRideDialog: View {
    
    @Binding var show: Bool
    @Binding var showNextView: Bool
    @Binding var isTimerRunning: Bool
    @Binding var progressTime: Int
    
    /// Increase progressTime each second
    @State private var timer: Timer?
    
    var body: some View {
        VStack{
            /// Vista del timer
            TimerView(isRunning: $isTimerRunning, progressTime: $progressTime)
            
            HStack{
                // start
                Button(action: {
                    if isTimerRunning{
                        timer?.invalidate()
                    } else {
                        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                            progressTime += 1
                        })
                    }
                    isTimerRunning.toggle()
                }, label: {
                    Text("START")
                        .font(.system(size: 18))
                        .foregroundColor(Color.orange)
                }).padding()
                
                Divider()
                    .frame(height: 50)
                
                // stop
                Button(action: {
                    withAnimation{
                        showNextView.toggle()
                        show.toggle()
                    }
                    isTimerRunning.toggle()
                }, label: {
                    Text("STOP")
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                }).padding()
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.size.width - 32) ///height: 150
        .background(Color.white)
        .cornerRadius(25)
        .padding()
    }
}

struct StopRideDialog: View {
    
    @Binding var show: Bool
    @Binding var finalTime: Int
    
    var body: some View {
        VStack{
            TimerView(isRunning: $show, progressTime: $finalTime)
            
            HStack{
                // start
                Button(action: {
                    
                }, label: {
                    Text("START")
                        .font(.system(size: 18))
                        .foregroundColor(Color.orange)
                })
                
                Divider()
                    .frame(height: 50)
                
                // stop
                Button(action: {
                    withAnimation{
                        show.toggle()
                    }
                }, label: {
                    Text("STOP")
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                })
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.size.width - 32, height: 150)
        .background(Color.white)
        .cornerRadius(25)
        .padding()
    }
}

struct ConfirmSaveDialog: View {
    
    @Binding var show: Bool
    
    var width = UIScreen.main.bounds.size.width - 64
    
    var body: some View {
        VStack{
            Text("Your progress has been correctly stored!")
                .multilineTextAlignment(.center)
                .font(.system(size: 24))
                .foregroundColor(.black)
                .padding()
            
            Button(action: {
                show.toggle()
            }, label: {
                Text("OK")
                    .font(.system(size: 16))
                    .foregroundColor(.gray)
            }).padding()
        }
        .frame(width: width, height: width)
        .background(Color.white)
        .cornerRadius(25)
        .padding()
    }
}
