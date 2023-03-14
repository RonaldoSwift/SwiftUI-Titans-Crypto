//
//  WalletsViewModel.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 13/03/23.
//

import Foundation

class WalletsViewModel: ObservableObject {
    /// Defines how often we are going to try looking for a new QR-code in the camera feed.
    let scanInterval: Double = 1.0

    @Published var torchIsOn: Bool = false
    @Published var lastQrCode: String = "Qr-code goes here"

    func onFoundQrCode(_ code: String) {
        lastQrCode = code
    }
}
