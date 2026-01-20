
import Foundation

@MainActor
public final class ThemeCore {
    public static let shared = ThemeCore()
    
    private init() {}
    
    public func start(
        defaultMode: ThemeMode = .system,
        customThemes: [String: AppTheme] = [:]
    ) {
        ThemeManager.shared.start(
            defaultMode: defaultMode,
            customThemes: customThemes
        )
    }
    
    public func switchTheme(_ mode: ThemeMode) {
        ThemeManager.shared.switchMode(mode)
    }

    public func applyRemoteTheme(json: Data) {
        if let dto = try? JSONDecoder().decode(RemoteThemeDTO.self, from: json) {
            let theme = RemoteTheme(dto: dto)
            ThemeManager.shared.start(
                defaultMode: .custom(dto.id),
                customThemes: [dto.id: theme]
            )
        }
    }
}
