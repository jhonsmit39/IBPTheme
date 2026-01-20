// ThemeParser.swift
import SwiftUI

struct RemoteThemeDTO: Codable {
    let id: String
    let colors: [String: String]
}

struct RemoteTheme: AppTheme {

    let id: String
    private let colors: [ColorToken: Color]

    init(dto: RemoteThemeDTO) {
        self.id = dto.id
        var colorDict: [ColorToken: Color] = [:]
        for (key, hexString) in dto.colors {
            if let token = ColorToken(rawValue: key) {
                colorDict[token] = Color(ibpHex: hexString)
            }
        }
        self.colors = colorDict
    }

    func color(_ token: ColorToken) -> Color {
        colors[token] ?? .clear
    }
}
