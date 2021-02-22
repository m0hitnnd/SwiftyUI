//
//  ContentView.swift
//  Memory Game
//
//  Created by Mohit on 27/12/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoryViewModel
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(model: card)
                    .onTapGesture { viewModel.cardTapped(card) }
                    .foregroundColor(Color.orange)
                    .padding()
            }
        }
    }
}


struct CardView: View {
    var model: MemoryGameModel<String>.Card
    
    var body: some View {
        ZStack {
            if model.isVisible {
                RoundedRectangle(cornerRadius: 10).stroke()
                Text(model.content)
            } else {
                RoundedRectangle(cornerRadius: 10)
            }
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(viewModel: EmojiMemoryViewModel())
        }
    }
}
