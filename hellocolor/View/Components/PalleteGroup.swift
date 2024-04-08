//
//  PalleteGroup.swift
//  Hello Color
//
//  Created by Josh Beck on 3/28/24.
//

import SwiftUI

struct PalleteGroup: View {
    @Binding var styles: StyleGroup
    var body: some View {
        HStack {
            Spacer()
            ForEach($styles.properties, id: \.self) { colorStyle in
                PalleteCellView(colorStyle: colorStyle)
                Spacer()
            }
            
        }
    }
}
