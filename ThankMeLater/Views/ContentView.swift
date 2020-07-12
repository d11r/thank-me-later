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
    // Rectangle settings
    private let rectOpacity = 0.07
    private let rectCornerRadius: CGFloat = 15.0
    
    // Window settings
    private let windowWidth: CGFloat = 300.0
    private let windowHeight: CGFloat = 300.0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: rectCornerRadius, style: .continuous)
                        .fill(Color.rectBg)
                        .padding(.leading, 10)
                        .padding(.trailing, 1)
                        .padding(.top, 10)
                    
                    FrequentBreaksView()
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: rectCornerRadius, style: .continuous)
                        .fill(Color.rectBg)
                        .padding(.trailing, 10)
                        .padding(.leading, 1)
                        .padding(.top, 10)
                    
                    Text("Reminder for eye care")
                        .padding()
                }
            }
            
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: rectCornerRadius, style: .continuous)
                        .fill(Color.rectBg)
                        .padding(.all, 10)
                        
                    Text("Reminder for hand excercises")
                        .padding()
                }
            }
        }
        .frame(width: self.windowWidth, height: self.windowHeight, alignment: .top)
        .background(Color.bg.opacity(0.2))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
