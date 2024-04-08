//
//  HomeView.swift
//  Hello Color
//
//  Created by Josh Beck on 3/28/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @State var darkMode = false
    @StateObject var viewModel = HomeViewModel()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ZStack {
                
                List {
                    Section("Color Scheme Preview") {
                        VStack(alignment: .center) {
                            PalleteGroup(styles: $viewModel.styles)
                        }
                    }
                    
                    Section("Colors") {
                        
                        ForEach(viewModel.styles.properties) { styleGroup in
                            NavigationLink(destination: ColorView(style: styleGroup)) {
                                HStack {
                                    styleGroup.color
                                        .frame(width: 20)
                                        .clipShape(Circle())
                                    Text(styleGroup.style.rawValue)
                                }
                            }
                        }
                    }
                    
                    Section("Settings") {
                        Section {
                            Toggle("Dark Mode", isOn: $darkMode)
                        }
                    }
                   
                }
                .preferredColorScheme(darkMode ? .dark : .light)
                .navigationTitle("Hello Color")
                bottomButton
            }
        }
    }
    
    // A view builder is
    @ViewBuilder
    var bottomButton: some View {
        VStack {
            Spacer()
            VStack(spacing: 46) {
                Button {
                    viewModel.regenerateColors()
                } label: {
                    HStack {
                        Spacer()
                        Image(systemName: "shuffle")
                        Text("Regenerate")
                        Spacer()
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 30).fill(colorScheme == .dark ? Color.white : Color.black))
                .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
                .padding(.horizontal, 30)
            }
            .padding()
            .background(Color(UIColor.systemGroupedBackground))
        }
    }
}

#Preview {
    HomeView()
}
