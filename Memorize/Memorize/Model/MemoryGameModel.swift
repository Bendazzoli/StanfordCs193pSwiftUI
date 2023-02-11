//
//  MemoryGame.swift
//  Memorize
//
//  Created by Paulo Henrique Bendazzoli on 06/02/23.
//

import Foundation

struct MemoryGameModel<CardContent> {
    var cards: Array<Card>

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(id: pairIndex*2, content: content))
            cards.append(Card(id: pairIndex*2+1, content: content))
        }
    }

    func choose(card: Card) {
        print("Card chosen: \(card)")
    }

    struct Card: Identifiable {
        var id: Int
        var isFacedUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
