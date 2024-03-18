//
//  CardModel.swift
//  TinderClone
//
//  Created by Marco Alonso on 18/03/24.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable {
    var id: String { return user.id }
}
