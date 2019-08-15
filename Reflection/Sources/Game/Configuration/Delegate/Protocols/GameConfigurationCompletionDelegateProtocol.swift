//
//  GameConfigurationCompletionDelegateProtocol.swift
//  Reflection
//
//  Created by HRISTIC Luka on 14/08/2019.
//  Copyright © 2019 Hristic Luka. All rights reserved.
//

import Foundation

@objc
public protocol GameConfigurationCompletionDelegateProtocol: class {
    func onGameConfigurated(successfully: Bool)
}
