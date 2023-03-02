//
//  VerificationView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct VerificationView: View {
    var body: some View {
        NavigationLink {
            CuentaCreadaView()
        } label: {
            Text("Pantalla de verificacion")
        }
    }
}

struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}
