//
//  Style.swift
//  Color Clocks
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation

/// Holds a singular style element made up of individual color style components
class Style: Identifiable {
    var primary: ColorStyle
    var secondary: ColorStyle
    var tertiary: ColorStyle
    var background: ColorStyle
    var accent: ColorStyle
    
    init(primary: ColorStyle, secondary: ColorStyle, tertiary: ColorStyle, background: ColorStyle, accent: ColorStyle) {
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
        self.background = background
        self.accent = accent
        styleMap = [primary, secondary, tertiary, background, accent]
    }
    
    public var styleMap: [ColorStyle]
}
