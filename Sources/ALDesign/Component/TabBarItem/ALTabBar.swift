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
        item.image = NaviIcon.alarmOutline2424.withTintColor(.surfaceLowEmphasis)
        item.selectedImage = NaviIcon.alarmFilled2424.withTintColor(.surfaceHighEmphasis)
        item.tag = 401
        item.accessibilityLabel = MainTabUI.homeTabBarItem
        homeTB.accessibilityIdentifier = MainTabUI.homeTabBarItem
        return item
    }
}
