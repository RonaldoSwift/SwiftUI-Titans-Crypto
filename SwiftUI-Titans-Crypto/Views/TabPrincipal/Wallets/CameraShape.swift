//
//  CameraShape.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 13/03/23.
//

import Foundation
import SwiftUI

struct CameraShape: Shape {
    let size: CGSize

    func path(in rect: CGRect) -> Path {
        var path = Rectangle().path(in: rect)

        let origin = CGPoint(x: rect.midX - size.width / 2, y: rect.midY - size.height / 2)
        path.addRect(CGRect(origin: origin, size: size))
        return path
    }
}
