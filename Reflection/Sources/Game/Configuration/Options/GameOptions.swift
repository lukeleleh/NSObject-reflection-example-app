//
//  GameOptions.swift
//  Reflection
//
//  Created by HRISTIC Luka on 14/08/2019.
//  Copyright © 2019 Hristic Luka. All rights reserved.
//

import Foundation

final class GameOptions: NSObject {
    let players: Int
    let minimumRounds: Int
    let maximumRounds: Int

    init(players: Int,
         minimumRounds: Int,
         maximumRounds: Int) {
        self.players = players
        self.minimumRounds = minimumRounds
        self.maximumRounds = maximumRounds

        super.init()
    }
}
