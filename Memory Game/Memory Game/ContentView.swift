//
//  ContentView.swift
//  Memory Game
//
//  Created by Mohit on 27/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) {_ in
                CardView(isVisible: false)
                    .foregroundColor(Color.orange)
                    .padding()
            }
        }
    }
}


struct CardView: View {
    var isVisible: Bool
    var body: some View {
        ZStack {
            if isVisible {
                RoundedRectangle(cornerRadius: 10).stroke()
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10)
            }
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
