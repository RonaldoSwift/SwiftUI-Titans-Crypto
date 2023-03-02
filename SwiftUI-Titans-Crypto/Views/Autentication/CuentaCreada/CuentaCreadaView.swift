//
//  CuentaCreadaView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct CuentaCreadaView: View {
    var body: some View {
        NavigationLink {
            TabPrincipalView()
        } label: {
            Text("Ir a Tab Principal")
        }
    }
}

struct CuentaCreadaView_Previews: PreviewProvider {
    static var previews: some View {
        CuentaCreadaView()
    }
}
