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
                .padding(.bottom, 30)

                HStack(spacing: 20) {
                    Button {
                        print("Deposit")
                    } label: {
                        VStack {
                            Image("DepositImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("Deposit")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }

                    Button {
                        print("Referral")
                    } label: {
                        VStack {
                            Image("ImageReferral")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("Referral")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }

                    Button {
                        print("Grid Trading")
                    } label: {
                        VStack {
                            Image("GridImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("Grid Trading")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }

                    Button {
                        print("Margin")
                    } label: {
                        VStack {
                            Image("MarginImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("Margin")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }
                }

                HStack(spacing: 20) {
                    Button {
                        print("Launchpad")
                    } label: {
                        VStack {
                            Image("LaunchImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("Launchpad")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }

                    Button {
                        print("Savings")
                    } label: {
                        VStack {
                            Image("SavingsImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("Savings")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }

                    Button {
                        print("Liquid Swap")
                    } label: {
                        VStack {
                            Image("LiquidImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("Liquid Swap")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }

                    Button {
                        print("More")
                    } label: {
                        VStack {
                            Image("MoreImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            Text("More")
                                .foregroundColor(Color("ColorLetraHome"))
                        }
                    }
                }

                Button {
                    print("Ir")
                } label: {
                    HStack {
                        ZStack {
                            Image("FondoEspacioUno")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 52, height: 52)
                            ZStack {
                                Image("FondoVerdeDos")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 52, height: 52)
                                ZStack {
                                    Image("FondoCoeteTres")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 56, height: 52)
                                }
                            }
                        }
                        Image("")
                        VStack(alignment: .leading) {
                            Text("P2P Trading")
                                .font(.title2)
                                .foregroundColor(Color("ColorTextP2P"))
                            Text("Bank Transfer, Paypal Revolution...")
                        }

                        Image("IntroEnButton")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 40)
                    }
                    .padding()
                    .background(Color("ColorFondoP2P"))
                    .cornerRadius(12)
                }
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
