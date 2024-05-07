//
//  ChatItemModel.swift
//  ChatPrototype
//
//  Created by Faris Armoush on 07/05/2024.
//

import Foundation


struct ChatItem: Identifiable {
    var id: UUID
    let sender: User
    let sentDate: Date
    let message: String
}

let chats: [ChatItem] = [
    ChatItem(id: UUID(), sender: users[0], sentDate: Date().addingTimeInterval(-3600 * 24), message: "Did you buy the groceries?"),
    ChatItem(id: UUID(), sender: users[1], sentDate: Date().addingTimeInterval(-3600 * 23), message: "No i have not"),
    ChatItem(id: UUID(), sender: users[0], sentDate: Date().addingTimeInterval(-3600 * 22), message: "You do realize we're having guests over, right?"),
    ChatItem(id: UUID(), sender: users[1], sentDate: Date().addingTimeInterval(-3600 * 2), message: "Yeah but i literally forgot"),
    ChatItem(id: UUID(), sender: users[1], sentDate: Date().addingTimeInterval(-60 * 30), message: "i will go get them right now"),
]
