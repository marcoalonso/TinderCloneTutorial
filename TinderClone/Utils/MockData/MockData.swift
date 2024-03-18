//
//  MockData.swift
//  TinderClone
//
//  Created by Marco Alonso on 18/03/24.
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(
            id: NSUUID().uuidString,
            fullname: "Megan Fox",
            age: 37,
            profileImageURLs: ["megan-1","megan-2","megan-3","megan-4","megan-5"]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Scarlett Johanson",
            age: 36,
            profileImageURLs: [
                "scarlet-1",
                "scarlet-2",
                "scarlet-3"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Margot Robbie",
            age: 33,
            profileImageURLs: [
                "margot-1",
                "margot-2",
                "margot-3"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Angelina Jolie",
            age: 48,
            profileImageURLs: [
                "angelina-1",
                "angelina-2",
                "angelina-3"
            ]
        ),
        .init(
            id: NSUUID().uuidString,
            fullname: "Lizeth Loeza",
            age: 30,
            profileImageURLs: [
                "ilse",
                "ilse2",
                "ilse3",
                "ilse4",
                "ilse5",
            ]
        )
    ]
}
