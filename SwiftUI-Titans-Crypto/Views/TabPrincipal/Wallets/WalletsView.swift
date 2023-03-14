//
//  WalletsView.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 1/03/23.
//

import SwiftUI

struct WalletsView: View {
    @ObservedObject var viewModel = WalletsViewModel()
    @State private var viajarAPantallaWalletsQR: Bool = false
    
    var clickEnBotonCancel: () -> Void
    
    var body: some View {
        ZStack {
            QrCodeScannerView()
                .found(r: self.viewModel.onFoundQrCode)
                .torchLight(isOn: self.viewModel.torchIsOn)
                .interval(delay: self.viewModel.scanInterval)
            
            GeometryReader { geometryProxy in
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("FondoPrincipal"))
                        .mask(
                            CameraShape(size: CGSize(width: geometryProxy.size.width, height: geometryProxy.size.width))
                                .fill(style: FillStyle(eoFill: true))
                        )
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.white, lineWidth: 3)
                        .frame(width: geometryProxy.size.width, height: geometryProxy.size.width)
                }
                
            }
            
            Image("Camara")
                .resizable()
                .scaledToFit()
                .frame(width: 182,height: 182)
            
            
            VStack {
                ParteSuperior {}
                
                HStack {
                    Circle()
                        .stroke(Color.green, lineWidth: 2)
                        .frame(width: 7, height: 7)
                    Text("Scan QR code")
                        .font(.title3)
                        .bold()
                    
                    Button(action: {
                        self.viewModel.torchIsOn.toggle()
                    }, label: {
                        Image(systemName: self.viewModel.torchIsOn ? "bolt.fill" : "bolt.slash.fill")
                            .imageScale(.large)
                            .foregroundColor(self.viewModel.torchIsOn ? Color.yellow : Color.blue)
                            .padding()
                    })
                }
                
                Text("Scan the QR code and it automatically recognize it.")
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                
                Text(self.viewModel.lastQrCode)
                    .bold()
                    .lineLimit(5)
                    .padding()
                
                Spacer()
                
                BottonVerde(nombreBotton: "Show QR code") {
                    viajarAPantallaWalletsQR = true
                }
                
                BottonVerde(colorFondo: "ColorBotonPlomo", nombreBotton: "Cancel") {
                    clickEnBotonCancel()
                }
            }
            .padding()
            NavigationLink(destination: WalletsQRView(), isActive: $viajarAPantallaWalletsQR) {
                EmptyView()
            }
        }
    }
}

struct WalletsView_Previews: PreviewProvider {
    static var previews: some View {
        WalletsView( clickEnBotonCancel: {})
    }
}

// Image("CamaraScrem")
//    .resizable()
//    .scaledToFit()
//    .frame(width: 333, height: 400)
