//
//  UserModel.swift
//  ChatPrototype
//
//  Created by Faris Armoush on 07/05/2024.
//

import Foundation

struct User {
    var id: UUID
    let name: String
    let imageURL: String
}

let users: [User] = [
    User(id: UUID(), name: "Faris Armoush", imageURL: "https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png"),
    User(id: UUID(), name: "Jeff", imageURL: "https://static.thenounproject.com/png/363640-200.png")
]
