//
//  ALNavigationBar.swift
//  
//
//  Created by 이옥민 on 2022/05/09.
//

import UIKit

open class ALNavigationBar: UINavigationBar {
    private let largeTextAttributes: [NSAttributedString.Key: Any] = [.font: Typography.title2.font, .foregroundColor: UIColor.onSurfaceHighEmphasis]
    private let textAttributes: [NSAttributedString.Key: Any] = [.font: Typography.subtitle1.font, .foregroundColor: UIColor.onSurfaceHighEmphasis]
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        isTranslucent = false
        shadowImage = UIImage()
        prefersLargeTitles = true
        largeTitleTextAttributes = largeTextAttributes
        tintColor = .onSurfaceHighEmphasis
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override var backgroundColor: UIColor? {
        didSet {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = backgroundColor
            appearance.titleTextAttributes = textAttributes
            appearance.largeTitleTextAttributes = largeTextAttributes
            standardAppearance = appearance
            compactAppearance = appearance
            scrollEdgeAppearance = appearance
        }
    }
}
