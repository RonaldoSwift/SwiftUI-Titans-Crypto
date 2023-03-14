//
//  RegisterMobileViewModel.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 8/03/23.
//

import FirebaseAuth
import Foundation

class RegisterMobileViewModel: ObservableObject {
    @Published var mostrarError: Bool = false
    @Published var viajarAVerificationView: Bool = false

    func registrarNumeroDeTelefono(numeroDeTelefono: String) {
        PhoneAuthProvider.provider()
            .verifyPhoneNumber(numeroDeTelefono, uiDelegate: nil) { _, error in
                if let error = error {
//                     AQUIE OCUERRE UN ERROR
                    self.mostrarError = true
                    return
                }
//                AQUI SE ISO EL REGISTRO CORRECTAMENTE
                self.viajarAVerificationView = true
            }
    }
}
