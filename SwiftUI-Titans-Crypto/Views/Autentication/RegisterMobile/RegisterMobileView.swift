//
//  RegisterMobileView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct RegisterMobileView: View {
    var body: some View {
        NavigationLink {
            VerificationView()
        } label: {
            Text("Registrarse con MOvile")
        }
    }
}

struct RegisterMobileView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterMobileView()
    }
}
