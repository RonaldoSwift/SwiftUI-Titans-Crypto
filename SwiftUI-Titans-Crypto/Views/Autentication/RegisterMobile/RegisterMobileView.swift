//
//  RegisterMobileView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct RegisterMobileView: View {
    @State private var numero: String = ""

    var body: some View {
        ZStack {
            Color("FondoPrincipal").ignoresSafeArea()

            VStack {
                Text("Register with mobile")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 20)

                Text("Please type your number, then well send a verification code for authentication.")
                    .foregroundColor(Color("ColorTextoRegisterMobile"))
                    .padding(.bottom, 30)

                Text("Mobile Number")
                    .foregroundColor(Color("ColorTextoRegisterMobile"))
                    .padding(.trailing, 200)

                TextField("Enter your mobile", text: $numero)
                    .padding()
                    .foregroundColor(Color.gray)
                    .background(Color("ColorParaTextField"))
                    .cornerRadius(10)
                    .padding(.bottom, 40)

                NavigationLink {
                    VerificationView()
                } label: {
                    BottonVerde(nombreBotton: "Send OTP")
                }

                Spacer()
            }
            .padding()
        }
    }
}

struct RegisterMobileView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterMobileView()
    }
}
