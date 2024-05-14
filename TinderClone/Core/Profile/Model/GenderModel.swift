//
//  GenderModel.swift
//  TinderClone
//
//  Created by Marco Alonso on 14/05/24.
//

import Foundation

struct GenderModel: Hashable {
    let id = UUID()
    let title: String

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func == (lhs: GenderModel, rhs: GenderModel) -> Bool {
        return lhs.id == rhs.id
    }
}


