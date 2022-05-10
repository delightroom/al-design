//
//  ALNavigationController.swift
//  
//
//  Created by 이옥민 on 2022/05/09.
//

import UIKit

public class ALNavigationController: UINavigationController {
    
    public init() {
        super.init(navigationBarClass: ALNavigationBar.self, toolbarClass: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if #available(iOS 14.0, *) {
            navigationItem.backButtonDisplayMode = .minimal
        } else {
            navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
    }
}

