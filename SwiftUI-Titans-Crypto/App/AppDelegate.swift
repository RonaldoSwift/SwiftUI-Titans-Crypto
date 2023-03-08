//
//  AppDelegate.swift
//  SwiftUI-Titans-Crypto
//
//  Created by Ronaldo on 7/03/23.
//

import FirebaseCore
import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
