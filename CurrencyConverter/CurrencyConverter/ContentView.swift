//
//  ContentView.swift
//  CurrencyConverter
//
//  Created by Mohit Anand on 15/08/20.
//  Copyright © 2020 Mohit Anand. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private let rates: [String: Double] = ["USD": 74.85, "EUR": 86.69]
    
    @State private var text: String = "100"
    
    @State private var currencySelected: String = "USD"
    
    let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = ""
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
    var output: String {
        let number = NSNumber(value: (Double(text) ?? 0) * rates[currencySelected]!)
        return formatter.string(from: number) ?? "Error"
    }
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter the amount", text: $text)
                    .frame(width: 100)
                Text(currencySelected)
                Text("=")
                Text(output)
                Text("INR")
            }.foregroundColor(.orange)
            Picker("Currency", selection: $currencySelected) {
                ForEach(self.rates.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
