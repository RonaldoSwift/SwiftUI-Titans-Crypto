//
//  HomeViewModel.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 8/03/23.
//

import FirebaseAuth
import Foundation

class HomeViewModel: ObservableObject {
    @Published var irAPantallaInicial: Bool = false

    func cerrarSession() {
        do {
            try Auth.auth().signOut()
            irAPantallaInicial = true
        } catch {
            print("No se pudo cerrar sesion")
        }
    }
}
