

import UIKit

// MARK: - Color Token 系统
/// 商业级颜色令牌系统
/// 遵循原子设计原则，支持动态主题、暗黑模式、品牌定制
public enum ColorToken: String, Codable, CaseIterable {
    
    // MARK: - 品牌色 (Brand Colors)
    /// 主品牌色 - 用于主要按钮、重要操作、品牌标识
    case brandPrimary
    
    /// 次品牌色 - 用于次要按钮、次要操作
    case brandSecondary
    
    /// 品牌渐变色 - 起始颜色
    case brandGradientStart
    
    /// 品牌渐变色 - 结束颜色
    case brandGradientEnd
    
    // MARK: - 语义色 (Semantic Colors)
    /// 成功状态 - 操作成功、完成状态
    case semanticSuccess
    
    /// 警告状态 - 需要关注、潜在风险
    case semanticWarning
    
    /// 错误状态 - 操作失败、错误提示
    case semanticError
    
    /// 信息状态 - 信息提示、说明
    case semanticInfo
    
    /// 链接色 - 可点击链接、超链接
    case semanticLink
    
    /// 禁用状态 - 不可用、禁用
    case semanticDisabled
    
    // MARK: - 中性色 (Neutral Colors)
    /// 主背景色 - 页面主背景
    case neutralBackgroundPrimary
    
    /// 次背景色 - 卡片、模块背景
    case neutralBackgroundSecondary
    
    /// 三背景色 - 输入框、分隔区域背景
    case neutralBackgroundTertiary
    
    /// 主文本色 - 标题、重要文本
    case neutralTextPrimary
    
    /// 次文本色 - 正文、次要文本
    case neutralTextSecondary
    
    /// 辅助文本色 - 提示、占位符
    case neutralTextTertiary
    
    /// 反色文本 - 深色背景上的浅色文本
    case neutralTextInverse
    
    /// 主分割线 - 主要区块分隔
    case neutralDividerPrimary
    
    /// 次分割线 - 内部元素分隔
    case neutralDividerSecondary
    
    /// 边框色 - 输入框、卡片边框
    case neutralBorder
    
    /// 遮罩层 - 模态弹窗背景
    case neutralOverlay
    
    // MARK: - 功能色 (Functional Colors)
    /// 主要按钮 - 主操作按钮
    case buttonPrimary
    
    /// 次要按钮 - 次要操作按钮
    case buttonSecondary
    
    /// 幽灵按钮 - 边框按钮
    case buttonGhost
    
    /// 文本按钮 - 文字按钮
    case buttonText
    
    /// 输入框背景 - 文本框背景
    case inputBackground
    
    /// 输入框边框 - 文本框边框
    case inputBorder
    
    /// 输入框占位符 - 提示文本
    case inputPlaceholder
    
    // MARK: - 导航色 (Navigation Colors)
    /// 导航栏背景 - 顶部导航栏
    case navigationBackground
    
    /// 导航栏标题 - 导航栏文字
    case navigationTitle
    
    /// 导航栏图标 - 导航栏按钮
    case navigationIcon
    
    /// Tab栏背景 - 底部Tab栏
    case tabBarBackground
    
    /// Tab栏选中 - 选中状态
    case tabBarSelected
    
    /// Tab栏未选中 - 未选中状态
    case tabBarUnselected
    
    // MARK: - 状态色 (State Colors)
    /// 选中状态 - 列表项选中
    case stateSelected
    
    /// 悬停状态 - Hover状态
    case stateHover
    
    /// 按压状态 - 按钮按下
    case statePressed
    
    /// 聚焦状态 - 输入框聚焦
    case stateFocused
    
    // MARK: - 数据可视化 (Data Visualization)
    /// 图表色1 - 数据系列1
    case chart1
    
    /// 图表色2 - 数据系列2
    case chart2
    
    /// 图表色3 - 数据系列3
    case chart3
    
    /// 图表色4 - 数据系列4
    case chart4
    
    /// 图表色5 - 数据系列5
    case chart5
    
    /// 图表色6 - 数据系列6
    case chart6
    
    /// 图表背景 - 图表区域背景
    case chartBackground
    
    /// 图表网格线 - 辅助线
    case chartGridLine
    
    // MARK: - 社交平台色 (Social Platform Colors)
    /// Facebook品牌色
    case socialFacebook
    
    /// Twitter品牌色
    case socialTwitter
    
    /// Instagram品牌色
    case socialInstagram
    
    /// LinkedIn品牌色
    case socialLinkedIn
    
    /// 微信品牌色
    case socialWechat
    
    /// 支付宝品牌色
    case socialAlipay
    
    // MARK: - 特殊场景 (Special Scenarios)
    /// 安全区域 - 重要操作、付款等
    case safety
    
    /// 促销色 - 促销活动
    case promotion
    
    /// VIP专属色 - 会员标识
    case vip
    
    /// 新消息提示 - 未读消息
    case newMessage
}
