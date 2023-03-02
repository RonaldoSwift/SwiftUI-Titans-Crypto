//
//  TabPrincipalView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct TabPrincipalView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "list.dash")
                }
                .tag(1)
            MarketsView()
                .tabItem {
                    Label("Markets", systemImage: "list.dash")
                }
                .tag(2)
            TradesView()
                .tabItem {
                    Label("Trades", systemImage: "list.dash")
                }
                .tag(3)
            ActivityView()
                .tabItem {
                    Label("Activity", systemImage: "list.dash")
                }
                .tag(4)
            WalletsView()
                .tabItem {
                    Label("Wallets", systemImage: "list.dash")
                }
                .tag(5)
        }
    }
}

struct TabPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        TabPrincipalView()
    }
}
