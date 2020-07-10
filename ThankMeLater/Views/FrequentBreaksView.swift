//
//  FrequentBreaksView.swift
//  ThankMeLater
//
//  Created by Dragos Strugar on 10.07.2020.
//  Copyright © 2020 Golden Chopper. All rights reserved.
//

import SwiftUI

struct FrequentBreaksView: View {
    var body: some View {
        VStack {
            Text("Break reminder")
                .font(.headline)
            
            HStack {
                Text("25")
                    .font(.title)
                
                Text("min")
                    .padding(.leading, -5)
                    .padding(.top, 5)
                
                Button(action: {}) {
                    Text("+")
                        .font(.headline)
                }
            }
            
            HStack {
                Button(action: {}) {
                    Text("take a break")
                }
            }
        }
        .padding()
    }
}

struct FrequentBreaksView_Previews: PreviewProvider {
    static var previews: some View {
        FrequentBreaksView()
    }
}
