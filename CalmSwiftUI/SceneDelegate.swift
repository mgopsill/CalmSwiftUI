//
//  SceneDelegate.swift
//  CalmSwiftUI
//
//  Created by Mike Gopsill on 10/03/2020.
//  Copyright © 2020 mgopsill. All rights reserved.
//

import SwiftUI
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let appview = AppView()

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: appview)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
