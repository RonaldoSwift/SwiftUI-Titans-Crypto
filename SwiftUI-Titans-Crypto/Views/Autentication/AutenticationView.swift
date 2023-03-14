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
    var autenticationViewModel: AutenticationViewModel = .init()

    @State private var email: String = ""
    @State private var pasword: String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var viajarATabPrincipal: Bool = false
    @State private var viajarARegisterMobile: Bool = false
    @State private var estaCargando: Bool = false
    @State private var mostrarErrorAlert: Bool = false

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

                if estaCargando == true {
                    ProgressView()
                }

                if selecionarPicker == 0 {
                    PantallaSignIn(email: $email, pasword: $pasword, clickEnButonSignIn: {
                        autenticationViewModel.signIn(email: email, pasword: pasword)
                    })
                }

                if selecionarPicker == 1 {
                    PantallaSingUp(email: $email, pasword: $pasword, clickEnSignUp: {
                        autenticationViewModel.signUp(email: email, pasword: pasword)
                    })
                }
                Spacer()
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            NavigationLink(destination: TabPrincipalView(), isActive: $viajarATabPrincipal) {
                EmptyView()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton())
        .alert(isPresented: $mostrarErrorAlert, content: {
            Alert(title: Text("hubo un error"))
        })
        .onReceive(autenticationViewModel.$estaCargando) { estaCargando in
            self.estaCargando = estaCargando
        }
        .onReceive(autenticationViewModel.$irATabPrincipal) { irATapPrincipal in
            self.viajarATabPrincipal = irATapPrincipal
        }
        .onReceive(autenticationViewModel.$mostrarErrorAlert) { mostrarAlerta in
            self.mostrarErrorAlert = mostrarAlerta
        }
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
