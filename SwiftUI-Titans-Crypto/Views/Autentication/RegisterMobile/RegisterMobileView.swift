//
//  RegisterMobileView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct RegisterMobileView: View {
    @State private var numero: String = ""
    var registerMobileViewModel: RegisterMobileViewModel = .init()
    @State private var mostrarAlertaDeError: Bool = false
    @State private var viajarAVerification: Bool = false

    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()

            VStack {
                Text("Register with mobile")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 20)

                Text("Please type your number, then well send a verification code for authentication.")
                    .foregroundColor(Color("ColorTextoRegisterMobile"))
                    .padding(.bottom, 30)

                Text("Mobile Number")
                    .foregroundColor(Color("ColorTextoRegisterMobile"))
                    .padding(.trailing, 200)

                TextField("Enter your mobile", text: $numero)
                    .padding()
                    .foregroundColor(Color.gray)
                    .background(Color("ColorParaTextField"))
                    .cornerRadius(10)
                    .padding(.bottom, 40)

                BottonVerde(nombreBotton: "Send OTP", clickEnBoton: {
                    registerMobileViewModel.registrarNumeroDeTelefono(numeroDeTelefono: numero)
                })

                Spacer()
            }
            .padding()
            NavigationLink(destination: VerificationView(), isActive: $viajarAVerification) {
                EmptyView()
            }
        }
        .alert(isPresented: $mostrarAlertaDeError, content: {
            Alert(title: Text("Hubo un error"))
        })
        .onReceive(registerMobileViewModel.$mostrarError, perform: { mostrarError in
            self.mostrarAlertaDeError = mostrarError
        })
        .onReceive(registerMobileViewModel.$viajarAVerificationView) { viajarVerificationView in
            self.viajarAVerification = viajarVerificationView
        }
    }
}

struct RegisterMobileView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterMobileView()
    }
}
