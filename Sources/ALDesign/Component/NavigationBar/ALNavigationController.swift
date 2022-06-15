//
//  ALNavigationController.swift
//  
//
//  Created by 이옥민 on 2022/05/09.
//

import UIKit

open class ALNavigationController: UINavigationController {
    
    public init() {
        super.init(navigationBarClass: ALNavigationBar.self, toolbarClass: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        navigationBar.topItem?.backButtonTitle = ""
    }
}

