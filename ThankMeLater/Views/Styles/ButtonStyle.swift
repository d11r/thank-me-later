//
//  NeumorphicButtonStyle.swift
//  ThankMeLater
//
//  Created by Dragos Strugar on 12.07.2020.
//  Copyright © 2020 Golden Chopper. All rights reserved.
//

import SwiftUI

struct NeumorphicButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .background(
                Group {
                    Circle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(width: 30, height: 30)
                }
            )
    }
}
