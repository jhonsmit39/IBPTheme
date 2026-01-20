//
//  DefaultDarkTheme.swift
//  IBPTheme
//
//  Created by llb on 2026/1/20.
//

import SwiftUI

struct DefaultDarkTheme: AppTheme {
    let id = "default_dark"
    
    func color(_ token: ColorToken) -> Color {
        switch token {
        // 品牌色通常不变
        case .brandPrimary: return Color(ibpHex: "#0A84FF")
        case .brandSecondary: return Color(ibpHex: "#5E5CE6")
        case .brandGradientStart: return Color(ibpHex: "#0A84FF")
        case .brandGradientEnd: return Color(ibpHex: "#64D2FF")
            
        // 语义色
        case .semanticSuccess: return Color(ibpHex: "#30D158")
        case .semanticWarning: return Color(ibpHex: "#FF9F0A")
        case .semanticError: return Color(ibpHex: "#FF453A")
        case .semanticInfo: return Color(ibpHex: "#64D2FF")
        case .semanticLink: return Color(ibpHex: "#0A84FF")
        case .semanticDisabled: return Color(ibpHex: "#48484A")
            
        // 中性色（暗色模式反转）
        case .neutralBackgroundPrimary: return Color(ibpHex: "#000000")
        case .neutralBackgroundSecondary: return Color(ibpHex: "#1C1C1E")
        case .neutralBackgroundTertiary: return Color(ibpHex: "#2C2C2E")
        case .neutralTextPrimary: return Color(ibpHex: "#FFFFFF")
        case .neutralTextSecondary: return Color(ibpHex: "#EBEBF5", opacity: 0.6)
        case .neutralTextTertiary: return Color(ibpHex: "#EBEBF5",  opacity: 0.3)
        case .neutralTextInverse: return Color(ibpHex: "#000000")
        case .neutralDividerPrimary: return Color(ibpHex: "#38383A")
        case .neutralDividerSecondary: return Color(ibpHex: "#2C2C2E")
        case .neutralBorder: return Color(ibpHex: "#38383A")
        case .neutralOverlay: return Color(ibpHex: "#000000", opacity: 0.6)
            
        // 功能色
        case .buttonPrimary: return Color(ibpHex: "#0A84FF")
        case .buttonSecondary: return Color(ibpHex: "#5E5CE6")
        case .buttonGhost: return Color(ibpHex: "#0A84FF")
        case .buttonText: return Color(ibpHex: "#0A84FF")
        case .inputBackground: return Color(ibpHex: "#1C1C1E")
        case .inputBorder: return Color(ibpHex: "#38383A")
        case .inputPlaceholder: return Color(ibpHex: "#EBEBF5", opacity: 0.3)
            
        // 导航色
        case .navigationBackground: return Color(ibpHex: "#1C1C1E", opacity: 0.8)
        case .navigationTitle: return Color(ibpHex: "#FFFFFF")
        case .navigationIcon: return Color(ibpHex: "#0A84FF")
        case .tabBarBackground: return Color(ibpHex: "#1C1C1E", opacity: 0.8)
        case .tabBarSelected: return Color(ibpHex: "#0A84FF")
        case .tabBarUnselected: return Color(ibpHex: "#8E8E93")
            
        // 状态色
        case .stateSelected: return Color(ibpHex: "#0A84FF", opacity: 0.2)
        case .stateHover: return Color(ibpHex: "#FFFFFF", opacity: 0.1)
        case .statePressed: return Color(ibpHex: "#FFFFFF", opacity: 0.2)
        case .stateFocused: return Color(ibpHex: "#0A84FF", opacity: 0.25)
            
        // 图表色
        case .chart1: return Color(ibpHex: "#FF453A")
        case .chart2: return Color(ibpHex: "#FF9F0A")
        case .chart3: return Color(ibpHex: "#FFD60A")
        case .chart4: return Color(ibpHex: "#30D158")
        case .chart5: return Color(ibpHex: "#64D2FF")
        case .chart6: return Color(ibpHex: "#0A84FF")
        case .chartBackground: return Color(ibpHex: "#1C1C1E")
        case .chartGridLine: return Color(ibpHex: "#2C2C2E")
            
        // 社交色保持不变
        case .socialFacebook: return Color(ibpHex: "#1877F2")
        case .socialTwitter: return Color(ibpHex: "#1DA1F2")
        case .socialInstagram: return Color(ibpHex: "#E4405F")
        case .socialLinkedIn: return Color(ibpHex: "#0A66C2")
        case .socialWechat: return Color(ibpHex: "#07C160")
        case .socialAlipay: return Color(ibpHex: "#00A0E9")
            
        // 特殊场景
        case .safety: return Color(ibpHex: "#30D158")
        case .promotion: return Color(ibpHex: "#FF375F")
        case .vip: return Color(ibpHex: "#FFD60A")
        case .newMessage: return Color(ibpHex: "#FF453A")
        }
    }
}
