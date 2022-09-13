//
//  Timer.swift
//  XBike-App
//
//  Created by Playa on 13-09-22.
//

import SwiftUI

struct TimerView: View {

    @Binding var isRunning: Bool
    @Binding  var progressTime: Int /// progress time expresed in seconds

    /// Computed properties to get the progressTime in hh:mm:ss format
    var hours: Int {
        progressTime / 3600
    }

    var minutes: Int {
        (progressTime % 3600) / 60
    }

    var seconds: Int {
        progressTime % 60
    }

    /// Increase progressTime each second
    @State private var timer: Timer?

    var body: some View {
        VStack {
            /// Timer format 00:00:00
            HStack(spacing: 10) {
                TimerUnitView(timeUnit: hours, timeUnitText: "HR", color: Color.black)
                Text(":")
                    .font(.system(size: 48))
                    .foregroundColor(.white)
                    .offset(y: -18)
                TimerUnitView(timeUnit: minutes, timeUnitText: "MIN", color: Color.black)
                Text(":")
                    .font(.system(size: 48))
                    .foregroundColor(.white)
                    .offset(y: -18)
                TimerUnitView(timeUnit: seconds, timeUnitText: "SEC", color: Color.black)
            }
        }
    }
}


struct TimerUnitView: View {

    var timeUnit: Int
    var timeUnitText: String
    var color: Color

    /// Time unit expressed as String.
    /// - Includes "0" as prefix if this is less than 10.
    var timeUnitStr: String {
        let timeUnitStr = String(timeUnit)
        return timeUnit < 10 ? "0" + timeUnitStr : timeUnitStr
    }

    var body: some View {
        VStack {
            ZStack {
                HStack(spacing: 2) {
                    Text(timeUnitStr.substring(index: 0))
                        .font(.system(size: 48))
                        .frame(width: 28)
                    Text(timeUnitStr.substring(index: 1))
                        .font(.system(size: 48))
                        .frame(width: 28)
                }
            }

            Text(timeUnitText)
                .font(.system(size: 16))
        }
    }
}

extension String {
    func substring(index: Int) -> String {
        let arrayString = Array(self)
        return String(arrayString[index])
    }
}
