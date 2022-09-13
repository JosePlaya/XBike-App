//
//  TimerController.swift
//  XBike-App
//
//  Created by Playa on 13-09-22.
//

import Foundation

class TimerController: ObservableObject {
    
    @Published var isRunning: Bool = false
    @Published  var progressTime: Int = 0
    
    
}
