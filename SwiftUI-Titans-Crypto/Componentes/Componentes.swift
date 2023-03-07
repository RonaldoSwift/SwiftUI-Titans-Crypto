//
//  Componentes.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 3/03/23.
//

import Foundation
import SwiftUI

func PantallaSignIn(email: Binding<String>, pasword: Binding<String>) -> some View {
    VStack {
        HStack {
            Text("Mobile Number")
                .foregroundColor(Color("ColorTextoRegisterMobile"))
            Spacer()
            Text("Sign in with email")
                .foregroundColor(Color("ColorTexto"))
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
                .foregroundColor(Color("ColorTexto"))
        }
        .padding(.trailing, 190)

        NavigationLink {
            TabPrincipalView()
        } label: {
            BottonVerde(nombreBotton: "Sign in")
        }

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

func PantallaSingUp(email: Binding<String>, pasword: Binding<String>) -> some View {
    VStack {
        HStack {
            Text("Email")
                .foregroundColor(Color("ColorTextoRegisterMobile"))
            Spacer()
            Text("Register with mobile")
                .foregroundColor(Color("ColorTexto"))
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

        NavigationLink {
            RegisterMobileView()
        } label: {
            BottonVerde(nombreBotton: "Sign up")
        }

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

func BottonVerde(nombreBotton: String, ancho: CGFloat = 340, alto: CGFloat = 50) -> some View {
    return Text(nombreBotton)
        .padding()
        // 340, 50
        .frame(width: ancho, height: alto)
        .foregroundColor(Color.black)
        .background(Color("ColorTexto"))
        .cornerRadius(10)
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
