//
//  AutenticationViewModel.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 7/03/23.
//

import FirebaseAuth
import Foundation

class AutenticationViewModel: ObservableObject {
    @Published var irATabPrincipal: Bool = false
    @Published var estaCargando: Bool = false
    @Published var mostrarErrorAlert: Bool = false
    @Published var irARegister: Bool = false

    func signIn(email: String, pasword: String) {
        estaCargando = true
        Auth.auth().signIn(withEmail: email, password: pasword) { [self] _, error in
            if let errorNoNulo = error {
                mostrarErrorAlert = true
                estaCargando = false
            } else {
                estaCargando = false
                irATabPrincipal = true
            }
        }
    }

    func signUp(email: String, pasword: String) {
        estaCargando = true
        Auth.auth().createUser(withEmail: email, password: pasword) { [self] _, error in
            if let errorNoNulo = error {
                mostrarErrorAlert = true
                estaCargando = false
            } else {
                estaCargando = false
                irATabPrincipal = true
            }
        }
    }
}
