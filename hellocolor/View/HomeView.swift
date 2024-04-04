//
//  HomeView.swift
//  Color Clocks
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
                    Section("Color Scheme") {
                        VStack(alignment: .center) {
                            PalleteView(styles: $viewModel.styles)
                        }
                    }
                    
                    Section("Colors") {
                        
                        // Primary
                        NavigationLink(destination: ColorView(style: viewModel.styles.primary)) {
                            HStack {
                                viewModel.styles.primary.color
                                    .frame(width: 20)
                                    .clipShape(Circle())
                                Text("Primary")
                            }
                        }
                        
                        // Secondary
                        NavigationLink(destination: ColorView(style: viewModel.styles.secondary)) {
                            HStack {
                                viewModel.styles.secondary.color
                                    .frame(width: 20)
                                    .clipShape(Circle())
                                Text("Secondary")
                            }
                        }
                        
                        // Tertiary
                        NavigationLink(destination: ColorView(style: viewModel.styles.tertiary)) {
                            HStack {
                                viewModel.styles.tertiary.color
                                    .frame(width: 20)
                                    .clipShape(Circle())
                                Text("Tertiary")
                            }
                        }
                        
                        // Background
                        NavigationLink(destination: ColorView(style: viewModel.styles.background)) {
                            HStack {
                                viewModel.styles.background.color
                                    .frame(width: 20)
                                    .clipShape(Circle())
                                Text("Background")
                            }
                        }
                        
                        // Accent
                        NavigationLink(destination: ColorView(style: viewModel.styles.accent)) {
                            HStack {
                                viewModel.styles.accent.color
                                    .frame(width: 20)
                                    .clipShape(Circle())
                                Text("Accent")
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
                .navigationTitle("Palettelyk")
                bottomButton
            }
        }
    }
    
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
