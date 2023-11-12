//
//  uber_cloneApp.swift
//  uber-clone
//
//  Created by Alana Price on 11/11/23.
//

import SwiftUI

@main
struct uber_cloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
