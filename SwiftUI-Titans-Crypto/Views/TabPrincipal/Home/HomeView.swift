//
//  HomeView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//
import SwiftUI

struct HomeView: View {
    @State private var mostrarActionSheetUsuario: Bool = false
    @EnvironmentObject var appSharedViewModel: AppSharedViewModel
    var homeViewModel: HomeViewModel = .init()

    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()
            VStack {
                ParteSuperior(clickEnPerfilDeUsuario: {
                    mostrarActionSheetUsuario = true
                })
            }
            .padding()
        }
        .sheet(isPresented: $mostrarActionSheetUsuario) {
            Button {
                homeViewModel.cerrarSession()
            } label: {
                Text("Cerras Secion")
                    .padding()
                    .foregroundColor(Color.black)
                    .background(Color.white)
                    .cornerRadius(10)
            }
        }
        .onReceive(homeViewModel.$irAPantallaInicial) { irAPantallaInicial in
            if irAPantallaInicial == true {
                appSharedViewModel.roodViewId = UUID()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
