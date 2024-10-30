//
//  CardViewModel.swift
//  StarWarsDemoACAMD
//
//  Created by Alejandro Antonio Estornell Salamanca on 30/10/24.
//

import Foundation

@Observable
final class CardViewModel {
    let cardRepository: CardRepository
    var cards: [Card]

    init(cardRepository: CardRepository = CardRepository()) {
        self.cardRepository = cardRepository

        do {
            cards = try cardRepository.getCards()
        } catch {
            cards = []
        }
    }
}
