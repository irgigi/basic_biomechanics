//
//  ContentView.swift
//  Basic_biomechanics


import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "figure")
                }
            
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
                }
            
            SettingsView()
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
