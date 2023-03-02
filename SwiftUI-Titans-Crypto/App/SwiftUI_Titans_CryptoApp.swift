//
//  SwiftUI_Titans_CryptoApp.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

@main
struct SwiftUI_Titans_CryptoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            BienvenidaView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
