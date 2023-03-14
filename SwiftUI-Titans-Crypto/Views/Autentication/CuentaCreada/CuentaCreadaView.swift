//
//  CuentaCreadaView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct CuentaCreadaView: View {
    @State private var viajarATabPrincipal: Bool = false

    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()
            VStack {
                Image("PersonaImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 95, height: 229)

                Text("Your account has been successfully created!")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)

                BottonVerde(nombreBotton: "Get Started", clickEnBoton: {
                    viajarATabPrincipal = true
                })

                Spacer()
            }
            .padding()
            NavigationLink(destination: TabPrincipalView(), isActive: $viajarATabPrincipal) {
                EmptyView()
            }
        }
    }
}

struct CuentaCreadaView_Previews: PreviewProvider {
    static var previews: some View {
        CuentaCreadaView()
    }
}
