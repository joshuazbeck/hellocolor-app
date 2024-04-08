//
//  PalleteCell.swift
//  Hello Color
//
//  Created by Josh Beck on 3/28/24.
//

import SwiftUI

struct PalleteCellView: View {
    @Binding var colorStyle: ColorStyle
    var body: some View {
        RoundedRectangle(cornerRadius: 10, style: .circular)
            .fill(colorStyle.color)
            .frame(width: 40, height: 40)
    }
}
