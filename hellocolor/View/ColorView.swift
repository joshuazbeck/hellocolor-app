//
//  ColorView.swift
//  Color Clocks
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation
import SwiftUI

struct ColorView: View {
    
    var style: ColorStyle
    
    // The environment variable to use to dismiss the color view
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            style.color // Add a color background
            VStack {
                Text("\(style.name)")
                    .font(.title)
                    .padding(.bottom, 10)
                Text("\(style.hex)")
                    .font(.body.italic())
                
            }
        }
        .ignoresSafeArea() // Extend over the entire screen
        .navigationBarBackButtonHidden(true) // Don't show the default arrow button
        .toolbar { // Override the default arrow button
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "arrow.backward")
                }
            }
        }
        .setContrast(backgroundColor: style.color) //Set the foreground color to compliment the background color
    }
}
