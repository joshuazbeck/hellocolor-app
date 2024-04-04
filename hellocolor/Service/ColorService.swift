//
//  ColorService.swift
//  Color Clocks
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation

class ColorService {
    public static let standard = ColorService()
    internal var previousPallete = -1
    public func getRandomStyle() -> Style {
        let repository = ColorRepository()
        let palletes = repository.palletes
        
        if palletes.count == 0 {
            fatalError("There were no pallets provided")
        }
        if palletes.count == 1 {
            return palletes.first!
        }
        
        var i = Int.random(in: 0..<palletes.count)
        while i == previousPallete {
            i = Int.random(in: 0..<palletes.count)
        }
        previousPallete = i
        
        return palletes[i]
        
    }
}
