//
//  DefaultLightTheme.swift
//  IBPTheme
//
//  Created by llb on 2026/1/20.
//
import SwiftUI

struct DefaultLightTheme: AppTheme {
    let id = "default_light"
    
    func color(_ token: ColorToken) -> Color {
        switch token {
        // 品牌色
        case .brandPrimary: return Color(ibpHex: "#007AFF")
        case .brandSecondary: return Color(ibpHex: "#5856D6")
        case .brandGradientStart: return Color(ibpHex: "#007AFF")
        case .brandGradientEnd: return Color(ibpHex: "#00C6FF")
            
        // 语义色
        case .semanticSuccess: return Color(ibpHex: "#34C759")
        case .semanticWarning: return Color(ibpHex: "#FF9500")
        case .semanticError: return Color(ibpHex: "#FF3B30")
        case .semanticInfo: return Color(ibpHex: "#5AC8FA")
        case .semanticLink: return Color(ibpHex: "#007AFF")
        case .semanticDisabled: return Color(ibpHex: "#C7C7CC")
            
        // 中性色
        case .neutralBackgroundPrimary: return Color(ibpHex: "#FFFFFF")
        case .neutralBackgroundSecondary: return Color(ibpHex: "#F2F2F7")
        case .neutralBackgroundTertiary: return Color(ibpHex: "#E5E5EA")
        case .neutralTextPrimary: return Color(ibpHex: "#000000")
        case .neutralTextSecondary: return Color(ibpHex: "#3C3C43", opacity: 0.6)
        case .neutralTextTertiary: return Color(ibpHex: "#3C3C43", opacity: 0.3)
        case .neutralTextInverse: return Color(ibpHex: "#FFFFFF")
        case .neutralDividerPrimary: return Color(ibpHex: "#C6C6C8")
        case .neutralDividerSecondary: return Color(ibpHex: "#E5E5EA")
        case .neutralBorder: return Color(ibpHex: "#C7C7CC")
        case .neutralOverlay: return Color(ibpHex: "#000000",opacity: 0.4)
            
        // 功能色
        case .buttonPrimary: return Color(ibpHex: "#007AFF")
        case .buttonSecondary: return Color(ibpHex: "#5856D6")
        case .buttonGhost: return Color(ibpHex: "#007AFF")
        case .buttonText: return Color(ibpHex: "#007AFF")
        case .inputBackground: return Color(ibpHex: "#F2F2F7")
        case .inputBorder: return Color(ibpHex: "#C7C7CC")
        case .inputPlaceholder: return Color(ibpHex: "#3C3C43", opacity: 0.3)
            
        // 导航色
        case .navigationBackground: return Color(ibpHex: "#F9F9F9",opacity: 0.8)
        case .navigationTitle: return Color(ibpHex: "#000000")
        case .navigationIcon: return Color(ibpHex: "#007AFF")
        case .tabBarBackground: return Color(ibpHex: "#F9F9F9", opacity: 0.8)
        case .tabBarSelected: return Color(ibpHex: "#007AFF")
        case .tabBarUnselected: return Color(ibpHex: "#8E8E93")
            
        // 状态色
        case .stateSelected: return Color(ibpHex: "#007AFF", opacity: 0.1)
        case .stateHover: return Color(ibpHex: "#000000", opacity: 0.05)
        case .statePressed: return Color(ibpHex: "#000000", opacity: 0.1)
        case .stateFocused: return Color(ibpHex: "#007AFF", opacity: 0.15)
            
        // 图表色
        case .chart1: return Color(ibpHex: "#FF3B30")
        case .chart2: return Color(ibpHex: "#FF9500")
        case .chart3: return Color(ibpHex: "#FFCC00")
        case .chart4: return Color(ibpHex: "#34C759")
        case .chart5: return Color(ibpHex: "#5AC8FA")
        case .chart6: return Color(ibpHex: "#007AFF")
        case .chartBackground: return Color(ibpHex: "#FFFFFF")
        case .chartGridLine: return Color(ibpHex: "#E5E5EA")
            
        // 社交色
        case .socialFacebook: return Color(ibpHex: "#1877F2")
        case .socialTwitter: return Color(ibpHex: "#1DA1F2")
        case .socialInstagram: return Color(ibpHex: "#E4405F")
        case .socialLinkedIn: return Color(ibpHex: "#0A66C2")
        case .socialWechat: return Color(ibpHex: "#07C160")
        case .socialAlipay: return Color(ibpHex: "#00A0E9")
            
        // 特殊场景
        case .safety: return Color(ibpHex: "#34C759")
        case .promotion: return Color(ibpHex: "#FF2D55")
        case .vip: return Color(ibpHex: "#FFCC00")
        case .newMessage: return Color(ibpHex: "#FF3B30")
        }
    }
}
