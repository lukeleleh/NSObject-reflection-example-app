//
//  Game.swift
//  Reflection
//
//  Created by HRISTIC Luka on 14/08/2019.
//  Copyright © 2019 Hristic Luka. All rights reserved.
//

import Foundation

final class Game: NSObject, GameProtocol {

    init(name: String) {
        print(name)

        super.init()
    }

    @objc
    func start() {
        print("The game is about to start!")
    }

    @objc // Objective-C signature: "configureWithOptions:completionDelegate:"
    func configure(options: GameOptions,
                   completionDelegate: GameConfigurationCompletionDelegateProtocol) {
        print("""
            The game has been configured for \(options.players) players with
            a minimum of \(options.minimumRounds) rounds and
            a maximum of \(options.maximumRounds) rounds."
            """)

        completionDelegate.onGameConfigurated(successfully: true)
    }
}
