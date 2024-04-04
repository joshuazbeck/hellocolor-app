//
//  ColorStyle.swift
//  Color Clocks
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation
import SwiftUI

/// Holds a reference to the model used to represent a color style element
class ColorStyle: Identifiable, Hashable {
    var id: String {
        return UUID().uuidString
    }
    
    public func hash(into hasher: inout Hasher) {
        return hasher.combine(id)
    }
    
    static func == (lhs: ColorStyle, rhs: ColorStyle) -> Bool {
        return lhs.id == rhs.id
    }
    
    var hex: String
    var name: String
    
    public var color: Color {
        get {
            return Color(hex: hex) ?? .black
        }
    }
    init(hex: String, name: String) {
        self.hex = hex
        self.name = name
    }
}
