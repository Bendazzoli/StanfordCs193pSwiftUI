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

    mutating func choose(card: Card) {
        print("Card chosen: \(card)")
        let chosenIndex: Int = index(of: card)
        cards[chosenIndex].isFacedUp = !cards[chosenIndex].isFacedUp
    }

    func index(of card: Card) -> Int {
        var cardIndex: Int = 0 // TODO: bogus!
        for index in 0..<self.cards.count {
            if self.cards[index].id == card.id {
                cardIndex = index
            }
        }
        return cardIndex
    }

    struct Card: Identifiable {
        var id: Int
        var isFacedUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
