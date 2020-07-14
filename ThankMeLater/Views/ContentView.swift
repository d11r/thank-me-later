//
//  ContentView.swift
//  Ambar
//
//  Created by Anagh Sharma on 12/11/19.
//  Copyright © 2019 Golden Chopper. All rights reserved.
//

import SwiftUI
import AppKit

struct ContentView: View {
    
    @State private var eyecareEnabled = false
    @State private var handcareEnabled = false
    @State private var breaksEnabled = false
    
    @State var currentDate = Date()
    @State var timeRemaining = 63
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Eyesight protection")
                        .font(.headline)
                    Spacer()
                    Toggle(isOn: $eyecareEnabled) {}
                        .toggleStyle(SwitchToggleStyle())
                }
            }
            
            Divider()
            
            HStack {
                Text("Hand & Wrist protection")
                    .font(.headline)
                Spacer()
                Toggle(isOn: $handcareEnabled) {}
                    .toggleStyle(SwitchToggleStyle())
            }
            
            Divider()
            
            HStack {
                Text("Take occasional breaks")
                    .font(.headline)
                Spacer()
                Toggle(isOn: $breaksEnabled) {}
                    .toggleStyle(SwitchToggleStyle())
            }
            
            Divider()
            
            HStack {
                Button(action: {}) {
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.secondary)
                }
                    .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: {}) {
                    Text("Open Thank me Later")
                }
            }
        }
        .padding()
    }
    
    private func getTimeLeft(timeLeft: Int) -> String {
        let minutes = timeLeft / 60
        let seconds = timeLeft % 60
        
        let minuteString = minutes < 10 ? "0\(minutes)" : "\(minutes)"
        let secondString = seconds < 10 ? "0\(seconds)" : "\(seconds)"
        
        return "\(minuteString):\(secondString)"
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
