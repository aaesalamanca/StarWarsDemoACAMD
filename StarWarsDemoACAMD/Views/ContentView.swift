//
//  ContentView.swift
//  StarWarsDemoACAMD
//
//  Created by Alejandro Antonio Estornell Salamanca on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var cardViewModel = CardViewModel()

    var body: some View {
        List {
            ForEach(cardViewModel.cards) { card in
                CardView(card: card)
            }
        }
        .navigationTitle("Star Wars")
    }
}

#Preview {
    ContentView(
        cardViewModel: CardViewModel(
            cardRepository: CardRepository(from: "StarWars Test")))
}
