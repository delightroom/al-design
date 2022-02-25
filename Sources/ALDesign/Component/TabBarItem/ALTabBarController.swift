//
//  ALTabBarController.swift
//  
//
//  Created by 이옥민 on 2022/02/25.
//

import Foundation
import UIKit

public class ALTabBarController: UITabBarController {
    lazy private var indicatorImage: UIImage = {
        let size = CGSize(width: 24, height: 35)
        let rect = CGRect(origin: .zero, size: size)
        let rectLine = CGRect(x:0, y: 32, width: 24,height: 2)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIColor.clear.setFill()
        UIRectFill(rect)
        UIColor.surfaceHighEmphasis.setFill()
        UIRectFill(rectLine)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().selectionIndicatorImage = indicatorImage
        tabBar.barTintColor = .surface
        tabBar.isTranslucent = false
    }
}
