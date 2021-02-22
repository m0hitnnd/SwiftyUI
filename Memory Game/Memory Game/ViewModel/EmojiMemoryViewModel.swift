//
//  EmojiMemoryViewModel.swift
//  Memory Game
//
//  Created by Mohit on 21/02/21.
//

import Foundation

class EmojiMemoryViewModel: ObservableObject {
    @Published private var model: MemoryGameModel<String> = EmojiMemoryViewModel.createModel
    
    private static let createModel: MemoryGameModel<String> = {
        let content = ["🐛", "👻", "🐶"]
        return MemoryGameModel(numberOfPairOfCards: content.count) { content[$0] }
    }()
    
    var cards: [MemoryGameModel<String>.Card] {
        model.cards
    }
    
    func cardTapped(_ card: MemoryGameModel<String>.Card) {
        model.cardTapped(card)
    }
    
}
