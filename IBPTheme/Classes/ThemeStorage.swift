// ThemeStorage.swift
import Foundation

enum ThemeModeIdentifier: String, Codable, CaseIterable {
    case light
    case dark
    case system
    case custom
}

extension ThemeMode {
    var storageIdentifier: ThemeModeIdentifier {
        switch self {
        case .light: return .light
        case .dark: return .dark
        case .system: return .system
        case .custom: return .custom
        }
    }
    
    var storageValue: String? {
        if case let .custom(id) = self {
            return id
        }
        return nil
    }
    
    static func from(
            identifier: ThemeModeIdentifier,
            value: String?
        ) -> ThemeMode? {

        switch identifier {
        case .light:
            return .light
        case .dark:
            return .dark
        case .system:
            return .system
        case .custom:
            guard let value else { return nil }
            return .custom(value)
        }
    }
}

enum ThemeStorage {
    private static let key = "com.ibp.theme.infrastructure.themeMode.storage"
    
    private struct StoredThemeMode: Codable {
        let type: ThemeModeIdentifier
        let value: String?
    }

    static func save(_ mode: ThemeMode) {
        let stored: StoredThemeMode = StoredThemeMode(type: mode.storageIdentifier, value: mode.storageValue)

        if let data = try? JSONEncoder().encode(stored) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }


    static func load() -> ThemeMode? {
        guard let data = UserDefaults.standard.data(forKey: key),
              let stored = try? JSONDecoder().decode(StoredThemeMode.self, from: data)
        else {
            return nil
        }
        
        return ThemeMode.from(
            identifier: stored.type,
            value: stored.value
        )
    }
}
