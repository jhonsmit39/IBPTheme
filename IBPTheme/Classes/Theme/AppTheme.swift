//
//  AppTheme.swift
//  IBPTheme
//
//  Created by llb on 2026/1/20.
//

import SwiftUI

public protocol AppTheme {
    var id: String { get }
    func color(_ token: ColorToken) -> Color
}
