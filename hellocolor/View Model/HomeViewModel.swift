//
//  HomeViewModel.swift
//  Hello Color
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    // Published is a value that "publishes" it's changes to State to trigger view rebuilds of components that rely on it's value
    @Published var styles: StyleGroup
    
    // Generic intializer to capture a random style
    init() {
        styles = ColorService.standard.getRandomStyle()
    }
    
    // Regenerate the colors
    public func regenerateColors() {
        styles = ColorService.standard.getRandomStyle()
    }
}
