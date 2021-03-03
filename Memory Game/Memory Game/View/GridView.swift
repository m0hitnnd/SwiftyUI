//
//  GridView.swift
//  Memory Game
//
//  Created by Mohit on 23/02/21.
//

import SwiftUI

struct GridView<ItemView>: View where ItemView: View {
    
    private let numberOfItems: Int
    private let itemAtRow: (Int) -> ItemView
    
    var body: some View {
        GeometryReader { geometry in
            ForEach(0..<numberOfItems) { itemIndex in
                itemAtRow(itemIndex)
                
            }
        }
    }
    
}
