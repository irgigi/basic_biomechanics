//
//  ContentView.swift
//  Basic_biomechanics


import SwiftUI

struct ContentView: View {
    
    @Binding var titleOn: Bool
    
    var body: some View {
        
        TabView {
            
            InfoView(titleOn: $titleOn)
                .tabItem {
                    Label("Info", systemImage: "figure")
                }
            
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
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
    ContentView(titleOn: .constant(true))
}
