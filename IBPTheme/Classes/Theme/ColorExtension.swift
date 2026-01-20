//
//  ColorExtension.swift
//  IBPTheme
//
//  Created by llb on 2026/1/20.
//

import SwiftUI

extension Color {
    
    /// 通过十六进制字符串创建 UIColor（IBPTheme专用版本）
    /// - Parameter hex: 十六进制颜色字符串，如 "#FF0000" 或 "FF0000"
    init(ibpHex hex: String, opacity: Double = 1.0) {
            var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
            
            if hexString.hasPrefix("#") {
                hexString.remove(at: hexString.startIndex)
            }
            
            // 支持带透明度的格式 #889844FF
            if hexString.count == 8 {
                let scanner = Scanner(string: hexString)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    let red = Double((hexNumber >> 24) & 0xFF) / 255.0
                    let green = Double((hexNumber >> 16) & 0xFF) / 255.0
                    let blue = Double((hexNumber >> 8) & 0xFF) / 255.0
                    let alpha = Double(hexNumber & 0xFF) / 255.0
                    
                    self.init(
                        .sRGB,
                        red: red,
                        green: green,
                        blue: blue,
                        opacity: alpha * opacity
                    )
                    return
                }
            }
            
            // 普通格式 #889844
            if hexString.count == 6 {
                let scanner = Scanner(string: hexString)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    let red = Double((hexNumber >> 16) & 0xFF) / 255.0
                    let green = Double((hexNumber >> 8) & 0xFF) / 255.0
                    let blue = Double(hexNumber & 0xFF) / 255.0
                    
                    self.init(
                        .sRGB,
                        red: red,
                        green: green,
                        blue: blue,
                        opacity: opacity
                    )
                    return
                }
            }
            
            // 简写格式 #894
            if hexString.count == 3 {
                let scanner = Scanner(string: hexString)
                var hexNumber: UInt64 = 0
                
                if scanner.scanHexInt64(&hexNumber) {
                    let red = Double((hexNumber >> 8) & 0xF) * 17 / 255.0
                    let green = Double((hexNumber >> 4) & 0xF) * 17 / 255.0
                    let blue = Double(hexNumber & 0xF) * 17 / 255.0
                    
                    self.init(
                        .sRGB,
                        red: red,
                        green: green,
                        blue: blue,
                        opacity: opacity
                    )
                    return
                }
            }
            
            // 默认返回黑色
            self.init(.sRGB, red: 0, green: 0, blue: 0, opacity: opacity)
        }
}

