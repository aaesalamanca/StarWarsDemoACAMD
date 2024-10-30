//
//  CardRepository.swift
//  StarWarsDemoACAMD
//
//  Created by Alejandro Antonio Estornell Salamanca on 30/10/24.
//

import Foundation

struct CardRepository {
    let url: URL?

    init(from: String = "StarWars") {
        url = Bundle.main.url(forResource: from, withExtension: "json")
    }

    func getCards() throws -> [Card] {
        let data = try Data(
            contentsOf: (url ?? URL(string: "FileThatDoesNotExist"))!)
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase

        return try jsonDecoder.decode([CardDTO].self, from: data).map(\.toCard)
    }
}
