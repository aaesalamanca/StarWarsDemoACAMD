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
        let sut = CardDTO()
        let expected = 3

        // Act.
        let actual = sut.toCard.habilidades.count

        // Assert.
        #expect(expected == actual)
    }

}
