//
//  MatchManager.swift
//  TinderClone
//
//  Created by Marco Alonso on 01/06/24.
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    
    @Published var matchedUser: User?
    
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()
        
        if didMatch {
            matchedUser = user
        }
    }
}
