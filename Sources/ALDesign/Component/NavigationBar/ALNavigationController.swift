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
        navigationController?.navigationBar.topItem?.backButtonTitle = ""
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.topItem?.backButtonTitle = ""
    }
}

