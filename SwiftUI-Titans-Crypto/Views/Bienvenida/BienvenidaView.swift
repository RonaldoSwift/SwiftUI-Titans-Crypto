//
//  BienvenidaView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct BienvenidaView: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                AutenticationView()
            } label: {
                Text("ir a autwntication")
            }

            Text("Pantalla de bienvenida - Aqui va el slider")
        }
    }
}

struct BienvenidaView_Previews: PreviewProvider {
    static var previews: some View {
        BienvenidaView()
    }
}
