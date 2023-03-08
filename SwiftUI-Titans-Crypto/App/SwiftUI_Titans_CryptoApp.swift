//
//  SwiftUI_Titans_CryptoApp.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

@main
struct SwiftUI_Titans_CryptoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            BienvenidaView()
        }
    }
}
