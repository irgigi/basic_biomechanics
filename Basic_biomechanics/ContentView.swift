//
//  ContentView.swift
//  Basic_biomechanics


import SwiftUI

struct ContentView: View {
    
    @AppStorage("titleOn") var titleOn = true
    
    var body: some View {
        
        TabView {
            
            InfoView(titleOn: $titleOn)
                .tabItem {
                    Label("Info", systemImage: "figure")
                }
            
            QuizeView()
                .tabItem {
                    Label("Quize", systemImage: "questionmark.app")
                }
            
            SettingsView(titleOn: $titleOn)
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .navigationBarTitle("-")

    }
}

#Preview {
    ContentView()
}
