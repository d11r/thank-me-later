//
//  Neumorphic.swift
//  ThankMeLater
//
//  Created by Dragos Strugar on 12.07.2020.
//  Copyright © 2020 Golden Chopper. All rights reserved.
//

import Foundation
import SwiftUI

extension Color {
    static let bg = Color(hex: "eeeeee")
    static let rectBg = Color(hex: "e0e2e1")
    
    static let fontColorDark = Color(hex: "555756")
    static let fontColorMed = Color(hex: "606060")
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff

        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)
    }
}
