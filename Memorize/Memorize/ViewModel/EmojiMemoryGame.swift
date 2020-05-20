//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 20/05/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
    private var game: MemoryGame<String> = createGame()

    // not that halloweny :]
    static let hallowenEmojis = ["🕷", "🕸", "🎃", "🤯", "🥳", "👺", "👻", "☠️"]

    static func createGame() -> MemoryGame<String> {
        let emojis = hallowenEmojis.shuffled()
        let numberOfPairsOfCards = Int.random(in: 2...5)

        return MemoryGame(numberOfPairsOfCards: numberOfPairsOfCards) { (index) in
            return emojis[index]
        }
    }


    // MARK: - Public Properties

    var cards: [MemoryGame<String>.Card] {
        return game.cards
    }


    // MARK: - User Intents / Public Methods

    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
