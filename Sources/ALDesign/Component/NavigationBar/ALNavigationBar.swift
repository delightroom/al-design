//
//  ALNavigationBar.swift
//  
//
//  Created by 이옥민 on 2022/05/09.
//

import UIKit

class ALNavigationBar: UINavigationBar {
    override init(frame: CGRect) {
        super.init(frame: frame)
        isTranslucent = false
        shadowImage = UIImage()
        prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: Typography.title2.font]
        tintColor = .onSurfaceHighEmphasis
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
