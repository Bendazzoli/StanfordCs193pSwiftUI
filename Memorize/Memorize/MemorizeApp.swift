//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Paulo Henrique Bendazzoli on 06/02/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let gameViewModel = EmojiMemoryGameViewModel()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: gameViewModel)
        }
    }
}
