//
//  SettingsView.swift
//  Basic_biomechanics


import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State private var isDarkMode = false
    @State private var sliderValue = 50.0
    @Binding var titleOn: Bool
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("Theme")) {
                    
                    
                    Toggle(isDarkMode ? "Dark Theme enabled" : "Light Theme enabled", isOn: $isDarkMode)
                
                    // from demo
                    Text("iOS appearance: " + (colorScheme == .dark ? "dark mode" : "light mode"))
                        .padding(32)
                }
                .preferredColorScheme(isDarkMode ? .dark : .light)
                
                Section(header: Text("Title On/Off")) {
                    Toggle("View", isOn: $titleOn)
                    
                    Text(titleOn ? "Navigation title enabled" : "")
                        .padding()
                    
                }
                
                Section(header: Text("2 section")) {
                    
                    Picker("Select option", selection: .constant(0)) {
                        Text("example").tag(0)
                    }
                    
                }
                
                Section(header: Text("3 section")) {
                    Slider(value: $sliderValue, in: 0...100, step: 1.0)
                }
                
            }
            .navigationBarTitle("Settings")
        }
        
    }
    
        
}

#Preview {
    SettingsView(titleOn: .constant(true))
}
