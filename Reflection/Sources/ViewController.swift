//
//  ViewController.swift
//  Reflection
//
//  Created by HRISTIC Luka on 07/08/2019.
//  Copyright © 2019 Hristic Luka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        invokeStartGameMethod()
    }

}

private extension ViewController {
    typealias GameType = NSObject & GameProtocol

    func invokeStartGameMethod() {
        let bundleExecutableName = Bundle.main.infoDictionary?["CFBundleExecutable"] as? String
        let formattedBundleName = bundleExecutableName?.replacingOccurrences(of: " ", with: "_")
        guard let bundleName = formattedBundleName else {
            return
        }

        let className = "Game"
        let bundleWithClassName = "\(bundleName).\(className)"
        guard let gameClass = NSClassFromString(bundleWithClassName) as? GameType.Type else {
            return
        }

        let game = gameClass.init(name: "Saboteur")

        let methodName = "configureWithOptions:completionDelegate:"
        let methodSelector: Selector = NSSelectorFromString(methodName)

        guard game.responds(to: methodSelector) else {
            return
        }

        let gameOptions = GameOptions(players: 2, minimumRounds: 2, maximumRounds: 4)
        let gameConfigurationCompletionDelegate = GameConfigurationCompletionDelegate()
        game.perform(methodSelector, with: gameOptions, with: gameConfigurationCompletionDelegate)
    }
}
