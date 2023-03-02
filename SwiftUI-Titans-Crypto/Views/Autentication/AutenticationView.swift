//
//  AutenticationView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct AutenticationView: View {
    var body: some View {
        NavigationLink {
            RegisterMobileView()
        } label: {
            Text("Pantalla DE autentication Sing In - Sign Up")
        }
    }
}

struct AutenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AutenticationView()
    }
}
