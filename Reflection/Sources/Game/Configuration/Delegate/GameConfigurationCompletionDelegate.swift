//
//  GameConfigurationCompletionDelegate.swift
//  Reflection
//
//  Created by HRISTIC Luka on 14/08/2019.
//  Copyright © 2019 Hristic Luka. All rights reserved.
//

final class GameConfigurationCompletionDelegate: GameConfigurationCompletionDelegateProtocol {
    func onGameConfigurated(successfully: Bool) {
        print(successfully)
    }
}
