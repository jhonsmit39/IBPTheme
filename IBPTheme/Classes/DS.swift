// DS.swift
import SwiftUI
import UIKit

@MainActor
public enum DS {
    public static func color(_ token: ColorToken) -> Color {
        ThemeManager.shared.theme.color(token)
    }
}

public extension DS {

    static func uiColor(_ token: ColorToken) -> UIColor {
        UIColor(ThemeManager.shared.theme.color(token))
    }
}
