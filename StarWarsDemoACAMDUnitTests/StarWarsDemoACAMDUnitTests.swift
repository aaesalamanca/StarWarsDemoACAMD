//
//  StarWarsDemoACAMDUnitTests.swift
//  StarWarsDemoACAMDUnitTests
//
//  Created by Alejandro Antonio Estornell Salamanca on 29/10/24.
//

import Foundation
import Testing

@testable import StarWarsDemoACAMD

extension Tag {
    @Tag static var cardDTO: Self
    @Tag static var cardRepository: Self
}

struct StarWarsDemoACAMDUnitTests {

    @Test(
        "Card should have expected number of skills from CardDTO.",
        .tags(.cardDTO))
    func cardShouldHaveExpectedNumberOfSkills() async throws {
        // Arrange.
        let sut = CardDTO(
            nombre: "Luke Skywalker",
            raza: "Humano",
            descripcion:
                "Héroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala.",
            planetaOrigen: "Tatooine",
            epoca: "Era del Imperio Galáctico",
            afiliacion: "Alianza Rebelde, Nueva República",
            habilidades: "Uso de la Fuerza, combate con sable de luz, pilotaje",
            armas: "Sable de luz",
            id: 6629,
            imagen: "lukeskywalker"
        )
        let expected = 3

        // Act.
        let actual = sut.toCard.habilidades.count

        // Assert.
        #expect(expected == actual)
    }

    @Test("Card should have all skills capitalized.", .tags(.cardDTO))
    func cardShouldHaveAllSkillsCapitalized() async throws {
        // Arrange.
        let sut = CardDTO(
            nombre: "Luke Skywalker",
            raza: "Humano",
            descripcion:
                "Héroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala.",
            planetaOrigen: "Tatooine",
            epoca: "Era del Imperio Galáctico",
            afiliacion: "Alianza Rebelde, Nueva República",
            habilidades: "Uso de la Fuerza, combate con sable de luz, pilotaje",
            armas: "Sable de luz",
            id: 6629,
            imagen: "lukeskywalker"
        )
        let expected = [
            "Uso De La Fuerza", "Combate Con Sable De Luz", "Pilotaje",
        ]

        // Act.
        let actual = sut.toCard.habilidades

        // Assert.
        for i in 0..<expected.count {
            #expect(expected[i] == actual[i])
        }
    }

    @Test(
        "Repository should get the expected number of Card.",
        .tags(.cardRepository))
    func repositoryShouldGetExpectedNumberOfCard() async throws {
        // Arrange.
        let sut = CardRepository(from: "StarWars Test")
        let expected = 4

        // Act.
        let actual = try sut.getCards().count

        // Assert.
        #expect(expected == actual)
    }

    @Test(
        "Repository url should be nil when the file does not exist.",
        .tags(.cardRepository))
    func repositoryUrlShouldBeNilWhenFileDoesNotExist() async throws {
        // Arrange.
        let sut = CardRepository(from: "FileThatDoesNotExist")
        let expected: URL? = nil

        // Act.
        let actual = sut.url

        // Assert.
        #expect(expected == actual)
    }

    @Test(
        "getCards() should throw when the file does not exist.",
        .tags(.cardRepository))
    func getCardsShouldThrowWhenFileDoesNotExist() async throws {
        // Arrange.
        let sut = CardRepository(from: "FileThatDoesNotExist")

        // Act.
        // Assert.
        #expect(throws: Error.self) {
            let cards = try sut.getCards()
        }
    }
}
