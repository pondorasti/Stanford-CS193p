//
//  MemoryGame.swift
//  Memorize
//
//  Created by Alexandru Turcanu on 20/05/2020.
//  Copyright © 2020 CodingBytes. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {

    // MARK: - Public Properties

    var cards: [Card]
    var score = 0


    // MARK: - Private Properties

    private var indexOfOnlyOneFaceUpCard: Int? {
        get { cards.indices.filter { cards[$0].isFaceUp }.containsOnlyOneElement() }

        set {
            for index in cards.indices {
                cards[index].isFaceUp = (newValue == index)
            }
        }
    }


    // MARK: - Initializers

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        for indexOfPair in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(indexOfPair)
            cards.append(Card(id: indexOfPair * 2, content: content))
            cards.append(Card(id: indexOfPair * 2 + 1, content: content))
        }

        cards.shuffle()
    }


    // MARK: - Public Methods

    mutating func choose(card: Card) {
        // retrieve index only if the card it not already faceUp or isMatched
        guard let index = cards.firstIndex(where: { $0.id == card.id }),
            !cards[index].isFaceUp, !cards[index].isMatched else {
            return
        }

        if let previousIndex = indexOfOnlyOneFaceUpCard { // there is already a faceUp card
            cards[index].isFaceUp = true

            if cards[previousIndex].content == cards[index].content { // we have a match
                cards[previousIndex].isMatched = true
                cards[index].isMatched = true

                indexOfOnlyOneFaceUpCard = .none

                score += 2
            } else if cards[previousIndex].alreadySeen || cards[index].alreadySeen { // decrease score if card was already seen
                score -= 1
            }

            // mark faceUp cards as seen
            cards[previousIndex].alreadySeen = true
            cards[index].alreadySeen = true

        } else {
            indexOfOnlyOneFaceUpCard = index
        }
    }


    // MARK: - Card Model

    struct Card: Identifiable {
        var id: Int
        var content: CardContent

        var isFaceUp = false
        var isMatched = false
        var alreadySeen = false
    }
}
