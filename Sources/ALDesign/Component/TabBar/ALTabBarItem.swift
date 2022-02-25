//
//  File.swift
//  
//
//  Created by 이옥민 on 2022/02/24.
//

import Foundation
import UIKit

public struct MainTabUI {
    static let view = "mainTab.view"
    static let homeTabBarItem = "mainTab.homeTabBarItem"
    static let sleepTabBarItem = "mainTab.sleepTabBarItem"
    static let todayTabBarItem = "mainTab.todayTabBarItem"
    static let moreTabBarItem = "mainTab.moreTabBarItem"
}

extension UITabBarItem {
    public static var alarm: UITabBarItem {
        let item = UITabBarItem()
        item.image = NaviIcon.alarmOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = NaviIcon.alarmFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 401
        item.accessibilityLabel = MainTabUI.homeTabBarItem
        item.accessibilityIdentifier = MainTabUI.homeTabBarItem
        return item
    }
    
    public static var sleepSound: UITabBarItem {
        let item = UITabBarItem()
        item.image = NaviIcon.sleepOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = NaviIcon.sleepFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 402
        item.accessibilityLabel = MainTabUI.sleepTabBarItem
        item.accessibilityIdentifier = MainTabUI.sleepTabBarItem
        return item
    }
    
    public static var todaypanel: UITabBarItem {
        let item = UITabBarItem()
        item.image = NaviIcon.todaypanelOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = NaviIcon.todaypanelFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 403
        item.accessibilityLabel = MainTabUI.todayTabBarItem
        item.accessibilityIdentifier = MainTabUI.todayTabBarItem
        return item
    }
    
    public static var more: UITabBarItem {
        let item = UITabBarItem()
        item.image = NaviIcon.settingOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = NaviIcon.settingFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 404
        item.accessibilityLabel = MainTabUI.moreTabBarItem
        item.accessibilityIdentifier = MainTabUI.moreTabBarItem
        return item
    }
    
    public static var history: UITabBarItem {
        let item = UITabBarItem()
        item.image = NaviIcon.historyOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = NaviIcon.historyFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        return item
    }
}
