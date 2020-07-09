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
    private let windowWidth: CGFloat = 360.0
    private let windowHeight: CGFloat = 360.0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: rectCornerRadius, style: .continuous)
                        .fill(Color.gray.opacity(rectOpacity))
                        .lineSpacing(2)
                        .padding(10)
                    
                    Text("content for R1")
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: rectCornerRadius, style: .continuous)
                        .fill(Color.gray.opacity(rectOpacity))
                        .lineSpacing(2)
                        .padding(10)
                    
                    Text("content for R2")
                }
            }
            
            HStack {
                Text("btw. thank me later!")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .italic()
            }
            .frame(width: self.windowWidth, alignment: .center)
        }
        .padding(0)
        .frame(width: self.windowWidth, height: self.windowHeight, alignment: .top)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
