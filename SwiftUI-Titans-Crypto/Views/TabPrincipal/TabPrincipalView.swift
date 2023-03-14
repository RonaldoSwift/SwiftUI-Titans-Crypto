//
//  TabPrincipalView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct TabPrincipalView: View {
    @State private var selectedItem = 1
    
    var body: some View {
        TabView(selection: $selectedItem) {
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

            NavigationView {
                WalletsView(clickEnBotonCancel: {
                    selectedItem = 1
                })
            }
            .tabItem {
                Label("Wallets", systemImage: "bag.fill")
            }
            .tag(5)
        }
        .accentColor(Color(COLOR_ACCENT))
        .navigationBarBackButtonHidden(true)
    }
}

struct TabPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        TabPrincipalView()
    }
}
