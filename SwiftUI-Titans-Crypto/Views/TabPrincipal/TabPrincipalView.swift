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
                    Label("Home", systemImage: "house.fill")
                }
                .tag(1)
            MarketsView()
                .tabItem {
                    Label("Markets", systemImage: "handbag")
                }
                .tag(2)
            TradesView()
                .tabItem {
                    Label("Trades", systemImage: "dollarsign.circle.fill")
                }
                .tag(3)
            ActivityView()
                .tabItem {
                    Label("Activity", systemImage: "bookmark.fill")
                }
                .tag(4)
            WalletsView()
                .tabItem {
                    Label("Wallets", systemImage: "bag.fill")
                }
                .tag(5)
        }
        .accentColor(Color.gray)
        .navigationBarBackButtonHidden(true)
    }
}

struct TabPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        TabPrincipalView()
    }
}
