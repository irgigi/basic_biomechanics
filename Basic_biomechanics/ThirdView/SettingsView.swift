//
//  SettingsView.swift
//  Basic_biomechanics


import SwiftUI

struct SettingsView: View {
    
    @State private var sliderValue = 50.0
    
    var body: some View {
        
        NavigationView {
            
            Form {
                
                Section(header: Text("1 section")) {
                    Toggle("toggle", isOn: .constant(true))
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
    SettingsView()
}
