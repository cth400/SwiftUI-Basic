//
//  SwiftUITestApp.swift
//  Shared
//
//  Created by TAEHYUNG CHOI on 13/01/2021.
//

import SwiftUI

@main
struct SwiftUITestApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
