//
//  User.swift
//  TinderClone
//
//  Created by Marco Alonso on 18/03/24.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    let age: Int
    let profileImageURLs: [String]
}
