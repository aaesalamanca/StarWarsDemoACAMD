//
//  CardDTO.swift
//  StarWarsDemoACAMD
//
//  Created by Alejandro Antonio Estornell Salamanca on 29/10/24.
//

import Foundation

struct CardDTO: Codable {
    static let separator = ", "

    let nombre: String
    let raza: String
    let descripcion: String
    let planetaOrigen: String
    let epoca: String
    let afiliacion: String
    let habilidades: String
    let armas: String
    let id: Int
    let imagen: String

    var toCard: Card {
        Card(
            id: id, nombre: nombre, raza: raza, descripcion: descripcion,
            planetaOrigen: planetaOrigen, epoca: epoca,
            afiliacion: afiliacion.components(separatedBy: Self.separator).map(
                \.capitalized),
            habilidades: habilidades.components(separatedBy: Self.separator)
                .map(\.capitalized),
            armas: armas.components(separatedBy: Self.separator).map(
                \.capitalized), imagen: imagen)
    }
}
