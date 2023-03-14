//
//  Componentes.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 3/03/23.
//

import Foundation
import SwiftUI

func PantallaSignIn(email: Binding<String>, pasword: Binding<String>, clickEnButonSignIn: @escaping () -> Void) -> some View {
    VStack {
        HStack {
            Text("Mobile Number")
                .foregroundColor(Color("ColorTextoRegisterMobile"))
            Spacer()
            Text("Sign in with email")
                .foregroundColor(Color(COLOR_ACCENT))
        }

        HStack {
            TextField("Enter your mobile", text: email)
                .padding()
            Spacer()
        }
        .background(Color("ColorParaTextField"))
        .cornerRadius(10)

        HStack {
            Text("Password")
                .foregroundColor(Color("ColorTextoRegisterMobile"))
            Spacer()
        }

        HStack {
            TextField("Enter your password", text: pasword)
                .padding()
            Spacer()
            Image("OjoPasword")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.leading, 80)
        }
        .background(Color("ColorParaTextField"))
        .cornerRadius(10)

        Button {
            print("Password")
        } label: {
            Text("Forgot password?")
                .foregroundColor(Color(COLOR_ACCENT))
        }
        .padding(.trailing, 190)

        BottonVerde(nombreBotton: "Sign in", clickEnBoton: {
            clickEnButonSignIn()
        })

        Text("Or login with")
            .foregroundColor(Color.gray)

        HStack {
            Button {
                print("Facebook")
            } label: {
                HStack {
                    Image("facebookImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Facebook")
                }
                .padding()
                .frame(width: 150, height: 50)
                .foregroundColor(Color.black)
                .background(Color.white)
                .cornerRadius(10)
            }

            Spacer()

            Button {
                print("Google")
            } label: {
                HStack {
                    Image("googleImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Google")
                }
                .padding()
                .frame(width: 150, height: 50)
                .foregroundColor(Color.black)
                .background(Color.white)
                .cornerRadius(10)
            }
        }
    }
}

func PantallaSingUp(email: Binding<String>, pasword: Binding<String>, clickEnSignUp: @escaping () -> Void) -> some View {
    VStack {
        HStack {
            Text("Email")
                .foregroundColor(Color("ColorTextoRegisterMobile"))
            Spacer()
            NavigationLink {
                RegisterMobileView()
            } label: {
                Text("Register with mobile")
                    .foregroundColor(Color(COLOR_ACCENT))
            }
        }

        HStack {
            TextField("Please enter email", text: email)
                .padding()
            Spacer()
        }
        .background(Color("ColorParaTextField"))
        .cornerRadius(10)

        HStack {
            Text("Password")
                .foregroundColor(Color("ColorTextoRegisterMobile"))
            Spacer()
        }

        HStack {
            TextField("Please enter password", text: pasword)
                .padding()
            Spacer()
            Image("OjoPasword")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding(.leading, 80)
        }
        .background(Color("ColorParaTextField"))
        .cornerRadius(10)
        .padding(.bottom, 30)

        BottonVerde(nombreBotton: "Sign up", clickEnBoton: {
            clickEnSignUp()
        })

        Text("Or login with")
            .foregroundColor(Color.gray)

        HStack {
            Button {
                print("Facebook")
            } label: {
                HStack {
                    Image("facebookImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Facebook")
                }
                .padding()
                .frame(width: 150, height: 50)
                .foregroundColor(Color.black)
                .background(Color.white)
                .cornerRadius(10)
            }

            Spacer()

            Button {
                print("Google")
            } label: {
                HStack {
                    Image("googleImage")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    Text("Google")
                }
                .padding()
                .frame(width: 150, height: 50)
                .foregroundColor(Color.black)
                .background(Color.white)
                .cornerRadius(10)
            }
        }
    }
}

func BottonVerde(colorFondo: String = COLOR_ACCENT, nombreBotton: String, ancho: CGFloat = 340, alto: CGFloat = 50, clickEnBoton: @escaping () -> Void) -> some View {
    return Button {
        clickEnBoton()
    } label: {
        Text(nombreBotton)
            .padding()
            // 340, 50
            .frame(width: ancho, height: alto)
            .foregroundColor(Color.black)
            .background(Color(colorFondo))
            .cornerRadius(10)
    }
}

func BottonCodigoDeVerificacion(printNumero: String, imagenDeNumero: String) -> some View {
    return Button {
        print(printNumero)
    } label: {
        Image(imagenDeNumero)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 44)
    }
}

func ParteSuperior(clickEnPerfilDeUsuario: @escaping () -> Void) -> some View {
    return HStack {
        Button {
            clickEnPerfilDeUsuario()
        } label: {
            Image("PerfilImage")
                .resizable()
                .scaledToFit()
                .frame(width: 23, height: 23)
        }
        Spacer()
        Image("Lupa")
            .resizable()
            .scaledToFit()
            .frame(width: 23, height: 23)
        Image("Scaner")
            .resizable()
            .scaledToFit()
            .frame(width: 23, height: 23)
        Image("Campana")
            .resizable()
            .scaledToFit()
            .frame(width: 19, height: 19)
    }
}
