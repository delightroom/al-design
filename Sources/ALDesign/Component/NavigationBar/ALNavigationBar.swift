//
//  ALNavigationBar.swift
//  
//
//  Created by 이옥민 on 2022/05/09.
//

import UIKit

public class ALNavigationBar: UINavigationBar {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        isTranslucent = false
        shadowImage = UIImage()
        prefersLargeTitles = true
        largeTitleTextAttributes = [NSAttributedString.Key.font: Typography.title2.font]
        tintColor = .onSurfaceHighEmphasis
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
