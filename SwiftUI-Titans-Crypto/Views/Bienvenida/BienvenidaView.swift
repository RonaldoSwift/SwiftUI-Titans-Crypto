//
//  BienvenidaView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct BienvenidaView: View {
    @State var index = 0

    var images = ["Paradise", "Paradise", "Paradise", "Paradise", "Paradise"]

    var body: some View {
        NavigationView {
            VStack {
                PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                    ForEach(self.images, id: \.self) { (imageName: String) in
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                    }
                }
                .aspectRatio(4 / 3, contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 15))

                Stepper("Index: \(index)", value: $index.animation(.easeOut), in: 0 ... images.count - 1)

                NavigationLink {
                    AutenticationView()
                } label: {
                    Text("ir a autwntication")
                }
            }
        }
    }
}

struct BienvenidaView_Previews: PreviewProvider {
    static var previews: some View {
        BienvenidaView()
    }
}
