//
//  ChatItemModel.swift
//  ChatPrototype
//
//  Created by Faris Armoush on 07/05/2024.
//

import Foundation

struct ChatItem: Identifiable {
    var id: ObjectIdentifier
    let sender: User
    let sentDate: Date
    let message: String
}
