//
//  VerificationView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct VerificationView: View {
    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()

            VStack {
                Text("Enter your code")
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing, 90)
                    .padding(.bottom, 20)

                Text("Please type the code we sent to")
                    .foregroundColor(Color("ColorTextoRegisterMobile"))
                    .padding(.trailing, 90)

                Text("+1 234 567 8900")
                    .foregroundColor(Color("ColorTexto"))
                    .padding(.trailing, 200)
                    .padding(.bottom, 20)

                HStack(spacing: 30) {
                    BottonCodigoDeVerificacion(printNumero: "1", imagenDeNumero: "numeroUno")
                    BottonCodigoDeVerificacion(printNumero: "2", imagenDeNumero: "numeroDos")
                    BottonCodigoDeVerificacion(printNumero: "3", imagenDeNumero: "numeroTres")
                    BottonCodigoDeVerificacion(printNumero: "4", imagenDeNumero: "numeroCuatro")
                }
                .padding(.bottom, 10)

                Text("Resend code (30)")
                    .foregroundColor(Color("ColorTextoRegisterMobile"))

                Button {
                    print("Resent")
                } label: {
                    Text("Resend Link")
                        .foregroundColor(Color("ColorTexto"))
                }
                .padding(.bottom, 40)

                NavigationLink {
                    CuentaCreadaView()
                } label: {
                    BottonVerde(nombreBotton: "Continue")
                }

                Spacer()
            }
            .padding()
        }
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}
