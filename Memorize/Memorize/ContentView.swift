//
//  ContentView.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 19/05/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var emojiGame = EmojiMemoryGame()

    var body: some View {
        HStack(spacing: 8) {
            ForEach(emojiGame.cards) { card in
                CardView(card: card).onTapGesture {
                    self.emojiGame.choose(card: card)
                }
            }
        }
        .foregroundColor(Color.orange)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
