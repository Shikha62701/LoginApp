//
//  SceneDelegate.swift
//  LoginApp
//
//  Created by shikha singh on 16/09/26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {

        guard let windowScene = scene as? UIWindowScene else {
            return
        }

        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let viewController = storyboard.instantiateViewController(
            withIdentifier: "ViewController"
        )

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = viewController
        self.window = window

        window.makeKeyAndVisible()
    }
}
