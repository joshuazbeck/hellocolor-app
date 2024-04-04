//
//  PalleteView.swift
//  Color Clocks
//
//  Created by Josh Beck on 3/28/24.
//

import SwiftUI

struct PalleteView: View {
    @Binding var styles: Style
    var body: some View {
        HStack {
            Spacer()
            ForEach($styles.styleMap, id: \.self) { colorStyle in
                PalleteCellView(colorStyle: colorStyle)
                Spacer()
            }
            
        }
    }
}
