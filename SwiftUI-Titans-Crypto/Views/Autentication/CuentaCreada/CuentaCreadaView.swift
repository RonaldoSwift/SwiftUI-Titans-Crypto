//
//  CuentaCreadaView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct CuentaCreadaView: View {
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

                NavigationLink {
                    TabPrincipalView()
                } label: {
                    BottonVerde(nombreBotton: "Get Started")
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct CuentaCreadaView_Previews: PreviewProvider {
    static var previews: some View {
        CuentaCreadaView()
    }
}
