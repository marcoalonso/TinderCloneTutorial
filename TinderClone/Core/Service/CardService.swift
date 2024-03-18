//
//  CardService.swift
//  TinderClone
//
//  Created by Marco Alonso on 18/03/24.
//

import Foundation

struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        return users.map({ CardModel(user: $0) })
    }
}
