// ThemeFactory.swift
import UIKit

enum ThemeFactory {

    static func resolve(
        mode: ThemeMode,
        customThemes: [String: AppTheme]
    ) -> AppTheme {

        switch mode {
        case .light:
            return DefaultLightTheme()

        case .dark:
            return DefaultDarkTheme()

        case .system:
            let isDark = UITraitCollection.current.userInterfaceStyle == .dark
            return isDark ? DefaultDarkTheme() : DefaultLightTheme()

        case .custom(let id):
            return customThemes[id] ?? DefaultLightTheme()
        }
    }
}
