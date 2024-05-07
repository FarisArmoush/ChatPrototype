//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Faris Armoush on 07/05/2024.
//

import SwiftUI

struct ContentView: View {
    let chats: [ChatItem]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(chats, id: \.id) { chat in
                    let isSentByMe = chat.sender.id == users[0].id
                    ChatBubble(chat: chat, isSentByMe: isSentByMe)
                        .frame(maxWidth: .infinity, alignment: isSentByMe ? .trailing : .leading)
                }.padding(.horizontal)
            }
            .navigationTitle("The Group Chat")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView(chats: chats)
}
