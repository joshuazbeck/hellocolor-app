//
//  HomeViewModel.swift
//  Color Clocks
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var styles: Style
    init() {
        styles = ColorService.standard.getRandomStyle()
    }
    public func regenerateColors() {
        styles = ColorService.standard.getRandomStyle()
    }
}
