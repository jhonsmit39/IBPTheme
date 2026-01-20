// ThemeManager.swift
import SwiftUI

@MainActor
final class ThemeManager: ObservableObject {

    static let shared = ThemeManager()

    @Published private(set) var theme: AppTheme
    private(set) var mode: ThemeMode = .system

    private var customThemes: [String: AppTheme] = [:]

    private init() {
        self.theme = DefaultLightTheme()
    }

    func start(defaultMode: ThemeMode,
               customThemes: [String: AppTheme]) {
        self.customThemes = customThemes
        let saved = ThemeStorage.load() ?? defaultMode
        switchMode(saved, persist: false)
    }

    func switchMode(_ mode: ThemeMode, persist: Bool = true) {
        self.mode = mode
        self.theme = ThemeFactory.resolve(
            mode: mode,
            customThemes: customThemes
        )

        if persist {
            ThemeStorage.save(mode)
        }

//        ThemeNotification.post()
    }
}
