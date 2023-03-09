//
//  WalletsView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct WalletsView: View {
    @State private var viajarAPantallaVacia: Bool = false

    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()
            VStack {
                ParteSuperior {}

                HStack {
                    Image("CamaraPequeña")
                    Text("Scan QR code")
                        .font(.title2)
                        .bold()
                }

                Text("Scan the QR code and it automatically recognize it.")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)

                Image("CamaraScrem")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 333, height: 400)

                BottonVerde(nombreBotton: "Show QR code") {
                    viajarAPantallaVacia = true
                }

                BottonVerde(colorFondo: "ColorBotonPlomo", nombreBotton: "Cancel") {
                    viajarAPantallaVacia = true
                }
            }
            .padding()
            NavigationLink(destination: TabPrincipalView(), isActive: $viajarAPantallaVacia) {
                EmptyView()
            }
        }
    }
}

struct WalletsView_Previews: PreviewProvider {
    static var previews: some View {
        WalletsView()
    }
}
