//
//  AutenticationView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI
// Elimine el king fisher

struct AutenticationView: View {
    var login = ["Sign in", "Sign up"]
    @State private var selecionarPicker = 0

    @State private var email: String = ""
    @State private var pasword: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var viajarATabPrincipal: Bool = false
    @State private var viajarARegisterMobile: Bool = false

    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()
            VStack {
                Picker(selection: $selecionarPicker, label: Text("Selecciona Sign")) {
                    ForEach(0 ..< login.count) {
                        Text(self.login[$0])
                    }
                }
                .padding(.bottom, 30)

                Text("\(self.login[selecionarPicker])")
                    .font(.largeTitle)
                    .bold()
                    .padding(.trailing, 210)
                    .padding(.bottom, 30)

                if selecionarPicker == 0 {
                    PantallaSignIn(email: $email, pasword: $pasword, clickEnButonSignIn: {
                        viajarATabPrincipal = true
                    })
                }

                if selecionarPicker == 1 {
                    PantallaSingUp(email: $email, pasword: $pasword, clickEnSignUp: {
                        viajarARegisterMobile = true
                    })
                }
                Spacer()
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            NavigationLink(destination: TabPrincipalView(), isActive: $viajarATabPrincipal) {
                EmptyView()
            }
            NavigationLink(destination: RegisterMobileView(), isActive: $viajarARegisterMobile) {
                EmptyView()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton())
    }

    private func CustomBackButton() -> some View {
        return Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            Image("Back")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
        }
    }
}

// Text("Pantalla DE autentication Sing In - Sign Up")

struct AutenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AutenticationView()
    }
}
