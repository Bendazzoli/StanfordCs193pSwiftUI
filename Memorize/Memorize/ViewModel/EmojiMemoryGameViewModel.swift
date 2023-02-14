//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Paulo Henrique Bendazzoli on 06/02/23.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    @Published private var memoryGameModel: MemoryGameModel<String> = EmojiMemoryGameViewModel.createMemoryGame()

    // MARK: - Init auxiliar function
    static func createMemoryGame() -> MemoryGameModel<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷️"]
        return MemoryGameModel<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }

    // MARK: - Access to the Model

    var cards: Array<MemoryGameModel<String>.Card> {
        memoryGameModel.cards
    }

    // MARK: - Intent(s)

    func choose(card: MemoryGameModel<String>.Card) {
        memoryGameModel.choose(card: card)
    }


}
