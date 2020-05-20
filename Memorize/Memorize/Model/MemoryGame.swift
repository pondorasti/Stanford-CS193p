//
//  MemoryGame.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 20/05/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {

    var cards: [Card]

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        for indexOfPair in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(indexOfPair)
            cards.append(Card(id: indexOfPair * 2, content: content))
            cards.append(Card(id: indexOfPair * 2 + 1, content: content))
        }

        cards.shuffle()
    }

    func choose(card: Card) {
        print("\(card)")
    }


    // MARK: - Card

    struct Card: Identifiable {
        var id: Int
        var content: CardContent

        var isFaceUp = true
        var isMatched = false
    }
}
