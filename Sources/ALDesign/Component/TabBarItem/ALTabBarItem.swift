//
//  ALTabBarItem.swift
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
        item.image = ALIcon.navi.alarmOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = ALIcon.navi.alarmFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 401
        item.accessibilityLabel = MainTabUI.homeTabBarItem
        item.accessibilityIdentifier = MainTabUI.homeTabBarItem
        item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        return item
    }
    
    public static var sleepSound: UITabBarItem {
        let item = UITabBarItem()
        item.image = ALIcon.navi.sleepOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = ALIcon.navi.sleepFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 402
        item.accessibilityLabel = MainTabUI.sleepTabBarItem
        item.accessibilityIdentifier = MainTabUI.sleepTabBarItem
        item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        return item
    }
    
    public static var todaypanel: UITabBarItem {
        let item = UITabBarItem()
        item.image = ALIcon.navi.todaypanelOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = ALIcon.navi.todaypanelFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 403
        item.accessibilityLabel = MainTabUI.todayTabBarItem
        item.accessibilityIdentifier = MainTabUI.todayTabBarItem
        item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        return item
    }
    
    public static var more: UITabBarItem {
        let item = UITabBarItem()
        item.image = ALIcon.navi.settingOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = ALIcon.navi.settingFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.tag = 404
        item.accessibilityLabel = MainTabUI.moreTabBarItem
        item.accessibilityIdentifier = MainTabUI.moreTabBarItem
        item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        return item
    }
    
    public static var history: UITabBarItem {
        let item = UITabBarItem()
        item.image = ALIcon.navi.historyOutline2424.withTintColor(.surfaceLowEmphasis, renderingMode: .alwaysOriginal)
        item.selectedImage = ALIcon.navi.historyFilled2424.withTintColor(.surfaceHighEmphasis, renderingMode: .alwaysOriginal)
        item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        return item
    }
}
