//
//  ThemeMode.swift
//  IBPTheme
//
//  Created by llb on 2026/1/20.
//

import Foundation

public enum ThemeMode: Equatable {
    case light
    case dark
    case system
    case custom(String) // brandId / remoteId
}

