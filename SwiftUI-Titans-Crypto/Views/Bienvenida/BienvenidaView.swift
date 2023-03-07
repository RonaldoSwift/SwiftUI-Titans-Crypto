//
//  BienvenidaView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct BienvenidaView: View {
    @State var index = 0

    var modelos: [BienvenidaModelo] = [
        BienvenidaModelo(id: "1", imagen: "BienvenidaUno", titulo: "Trade anytime anywhere", descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore."),
        BienvenidaModelo(id: "2", imagen: "BienvenidaDos", titulo: "Save and invest at the same time", descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore."),
        BienvenidaModelo(id: "3", imagen: "BienvenidaTres", titulo: "Transact fast and easy", descripcion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore."),
    ]

    var body: some View {
        NavigationView {
            ZStack {
                Color("FondoPrincipal").ignoresSafeArea()
                VStack {
                    PagingView(index: $index.animation(), maxIndex: modelos.count - 1) {
                        ForEach(self.modelos, id: \.id) { (bienvenidaModelo: BienvenidaModelo) in
                            CeldaBienvenida(bienvnidaModelo: bienvenidaModelo)
                        }
                    }
                    .aspectRatio(4 / 3, contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 15))

                    PageControl(index: $index, maxIndex: modelos.count - 1)

                    NavigationLink {
                        AutenticationView()
                    } label: {
                        BottonVerde(nombreBotton: "Next", ancho: 170, alto: 50)
                    }
                }
            }
        }
    }

    private func CeldaBienvenida(bienvnidaModelo: BienvenidaModelo) -> some View {
        return VStack {
            Image(bienvnidaModelo.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 311, height: 349)
            Text(bienvnidaModelo.titulo)
            Text(bienvnidaModelo.descripcion)
        }
    }
}

struct BienvenidaView_Previews: PreviewProvider {
    static var previews: some View {
        BienvenidaView()
    }
}
