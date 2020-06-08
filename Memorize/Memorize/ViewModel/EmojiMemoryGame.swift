//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 20/05/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {

    // MARK: - Private Properties

    @Published private var game = MemoryGame<String>(numberOfPairsOfCards: 0) { _ in "" }
    private var theme: Theme = .animals


    // MARK: - Public Properties

    var name: String { theme.name }
    var cards: [MemoryGame<String>.Card] { game.cards }
    var score: Int { game.score }


    // MARK: - Initializers

    init() {
        resetGame()
    }


    // MARK: - Public Methods

    func resetGame() {
        guard let theme = Theme.allThemes.randomElement() else {
            fatalError("Array of themes is empty")
        }

        self.theme = theme
        let numberOfPairsOfCards = Int.random(in: theme.rangeOfNumberOfPairs)
        game = MemoryGame(numberOfPairsOfCards: numberOfPairsOfCards) { (index) in
            return theme.emojis[index]
        }
    }


    // MARK: - User Intents / Public Methods

    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
