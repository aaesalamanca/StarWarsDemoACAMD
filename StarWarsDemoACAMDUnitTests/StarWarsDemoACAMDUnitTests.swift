//
//  StarWarsDemoACAMDUnitTests.swift
//  StarWarsDemoACAMDUnitTests
//
//  Created by Alejandro Antonio Estornell Salamanca on 29/10/24.
//

import Testing

@testable import StarWarsDemoACAMD

extension Tag {
    @Tag static var cardDTO: Self
}

struct StarWarsDemoACAMDUnitTests {

    @Test func cardShouldHaveExpectedNumberOfSkills() async throws {
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

    @Test func cardShouldHaveAllSkillsCapitalized() async throws {
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
}
