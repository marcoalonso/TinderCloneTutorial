//
//  TinderCloneApp.swift
//  TinderClone
//
//  Created by Marco Alonso on 12/03/24.
//

import SwiftUI

@main
struct TinderCloneApp: App {
    @StateObject var matchManager = MatchManager()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
