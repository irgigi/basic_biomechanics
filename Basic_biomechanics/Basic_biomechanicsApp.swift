//
//  Basic_biomechanicsApp.swift
//  Basic_biomechanics


import SwiftUI

@main
struct Basic_biomechanicsApp: App {
    
    @AppStorage("titleOn") var titleOn: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ContentView(titleOn: $titleOn)
        }
    }
}
