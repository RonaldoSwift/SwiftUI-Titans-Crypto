//
//  WalletsQRView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 10/03/23.
//

import SwiftUI

struct WalletsQRView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var viajarAPantallaWallets: Bool = false

    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()
            VStack {
                ParteSuperior {}

                HStack {
                    Text("USD")
                        .foregroundColor(Color.gray)
                    Text("BITS")
                        .foregroundColor(Color(COLOR_ACCENT))
                }

                Text("BTC 40,059.83")
                    .font(.title2)

                Text("My QR code")

                Image("ImageQR")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 248, height: 248)

                Text("ADDRESS")
                    .foregroundColor(Color.gray)
                HStack {
                    Text("n2e5dirgMNYdQskfiP5zj39VYemXareK4C")
                        .foregroundColor(Color.gray)
                    Button {
                        print("Texto Copiado")
                    } label: {
                        ZStack {
                            Image("ImageFondoblancoPequeño")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 45, height: 38)
                            ZStack {
                                Image("ImageImageCopiar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                            }
                        }
                    }
                }
                .background(Color("ColorParaTextField"))
                .cornerRadius(15)

                Text("Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)

                BottonVerde(nombreBotton: "Scan QR code") {
                    presentationMode.wrappedValue.dismiss()
                    
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct WalletsQRView_Previews: PreviewProvider {
    static var previews: some View {
        WalletsQRView()
    }
}
