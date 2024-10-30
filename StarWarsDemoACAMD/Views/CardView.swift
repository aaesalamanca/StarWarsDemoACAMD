//
//  CardView.swift
//  StarWarsDemoACAMD
//
//  Created by Alejandro Antonio Estornell Salamanca on 30/10/24.
//

import SwiftUI

struct CardView: View {
    let card: Card

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(card.nombre)
                    .font(.headline)
                Text(card.raza)
                    .foregroundStyle(.secondary)
                Text(card.afiliacion.formatted(.list(type: .and)))
            }
            Spacer()
            Image(card.imagen)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    CardView(
        card: Card(
            id: 6629,
            nombre: "Luke Skywalker",
            raza: "Humano",
            descripcion:
                "Héroe de la Alianza Rebelde y Caballero Jedi. Hijo de Anakin Skywalker y Padmé Amidala.",
            planetaOrigen: "Tatooine",
            epoca: "Era del Imperio Galáctico",
            afiliacion: ["Alianza Rebelde", "Nueva República"],
            habilidades: [
                "Uso De La Fuerza", "Combate Con Sable De Luz", "Pilotaje",
            ],
            armas: ["Sable de luz"],
            imagen: "lukeskywalker"
        ))
}
