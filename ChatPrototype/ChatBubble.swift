//
//  RecievedChatBubble.swift
//  ChatPrototype
//
//  Created by Faris Armoush on 07/05/2024.
//

import SwiftUI

struct ChatBubble: View {
    let chat: ChatItem
    let isSentByMe: Bool
    
    var body: some View {
        VStack(alignment: isSentByMe ? .trailing : .leading) {
            Text(chat.message)
                .padding()
                .background(isSentByMe ? .blue : .blue.opacity(0.8))
                .foregroundColor(.white)
                .cornerRadius(8)
                .lineLimit(nil)
                .fixedSize(horizontal: false, vertical: true)
            
            AsyncImage(url: URL(string: chat.sender.imageURL)) { image in
                image.resizable().frame(width: 20, height: 20)
            } placeholder: { ProgressView() }
        }
        .frame(maxWidth: .infinity, alignment: isSentByMe ? .trailing : .leading)
        .padding(isSentByMe ? .leading : .trailing)
    }
}

#Preview {
    ChatBubble(chat: chats[0], isSentByMe: false)
}
