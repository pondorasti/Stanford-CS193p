//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 19/05/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import SwiftUI

struct EmojiMemoryGameView: View {

    // MARK: - Private Properties

    @ObservedObject private var emojiGame = EmojiMemoryGame()


    // MARK: - Body

    var body: some View {
        NavigationView {
            GridView(data: emojiGame.cards) { card in
                CardView(card: card).onTapGesture {
                    self.emojiGame.choose(card: card)
                }
                .padding(8)
            }
            .foregroundColor(Color.orange)
            .padding()


            .navigationBarTitle(emojiGame.name)
            .navigationBarItems(leading: scoreLabel, trailing: newGameButton)
        }
    }


    // MARK: - Body Builders

    private var scoreLabel: some View {
        Text("Score: \(emojiGame.score)")
    }

    private var newGameButton: some View {
        Button(action: {
            self.emojiGame.resetGame()
        }) {
            HStack {
                Text("New game")
                Image(systemName: "arrow.counterclockwise.circle")
                    .imageScale(.large)
            }
        }
    }
}


// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView()
    }
}
