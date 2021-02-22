//
//  MemoryGameModel.swift
//  Memory Game
//
//  Created by Mohit on 21/02/21.
//

import Foundation

struct MemoryGameModel<Content> {
    var cards: [Card]
    
    
    init(numberOfPairOfCards: Int, content: ((Int) -> Content)) {
        self.cards = []
        for cardIndex in (0..<numberOfPairOfCards) {
            let firstCardInPair = Card(id: cardIndex*2, content: content(cardIndex))
            let secondCardInPair = Card(id: cardIndex*2+1 , content: content(cardIndex))
            cards.append(firstCardInPair)
            cards.append(secondCardInPair)
        }
    }
    
    mutating func cardTapped(_ card: Card) {
        cards[card.id].isVisible = !cards[card.id].isVisible
    }
    
    struct Card: Identifiable {
        var isVisible: Bool = false
        var isMatched: Bool = false
        let id: Int
        let content: Content
    }
   
}


