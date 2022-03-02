//
//  ALTabBarController.swift
//  
//
//  Created by 이옥민 on 2022/02/25.
//

import Foundation
import UIKit

open class ALTabBarController: UITabBarController {
    
    public enum TabBarItem: Int {
        case home
        case sleepSound
        case today
        case more
        case history
        
        var index: Int {
            return self.rawValue
        }
    }
    
    lazy private var indicatorImage: UIImage = {
        let size = CGSize(width: 24, height: tabBar.bounds.height - 6)
        let rect = CGRect(origin: .zero, size: size)
        let rectLine = CGRect(x:0, y: tabBar.bounds.height - 8, width: 24, height: 2)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.clear.setFill()
        UIRectFill(rect)
        UIColor.surfaceHighEmphasis.setFill()
        UIRectFill(rectLine)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().selectionIndicatorImage = indicatorImage
        tabBar.barTintColor = .surface
        tabBar.isTranslucent = false
    }
    
    open func addCustomNewBadge(at item: TabBarItem) {
        let barButtons = tabBar.subviews.filter { $0 is UIControl }
        guard barButtons.count > item.index, let tabBarItemImage = tabBar.items?[item.index].image else { return }

        let tabBarButton = barButtons[item.index]
        let padding: CGFloat = 3
        let x = (tabBar.frame.width/CGFloat(barButtons.count) + tabBarItemImage.size.width)/2 + padding
        let y = tabBarButton.bounds.height/2 - (tabBarItemImage.size.width/2 + padding)
        let size = CGSize(width: 6, height: 6)
        let customBadge = CustomBadgeView(frame: CGRect(x: x, y: y, width: size.width, height: size.height))
        
        tabBarButton.subviews.forEach { ( $0 as? CustomBadgeView)?.removeFromSuperview() }
        tabBarButton.addSubview(customBadge)
    }
    
    open func hideCustomNewBadge(at item: TabBarItem) {
        let barButtons = tabBar.subviews.filter { $0 is UIControl }
        guard barButtons.count > item.index else { return }
        let tabBarButton = barButtons[item.index]
        tabBarButton.subviews.forEach { ( $0 as? CustomBadgeView)?.removeFromSuperview() }
    }
}

private class CustomBadgeView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    private func setup() {
        self.backgroundColor = UIColor.primary
        self.layer.cornerRadius = bounds.width/2
    }
}
