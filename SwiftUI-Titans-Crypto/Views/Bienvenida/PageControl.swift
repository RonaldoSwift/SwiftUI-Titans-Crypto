//
//  PageControl.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Carlos Leonardo Camilo Vargas Huaman on 6/03/23.
//

import SwiftUI

struct PageControl: View {
    @Binding var index: Int
    let maxIndex: Int

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0 ... maxIndex, id: \.self) { index in
                Circle()
                    .fill(index == self.index ? Color.white : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
        .padding(15)
    }
}

struct PageControl_Previews: PreviewProvider {
    static var previews: some View {
        PageControl(index: .constant(0), maxIndex: 5)
    }
}
