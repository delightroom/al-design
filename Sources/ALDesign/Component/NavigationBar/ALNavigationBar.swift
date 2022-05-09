//
//  ALNavigationBar.swift
//  
//
//  Created by 이옥민 on 2022/05/09.
//

import UIKit

public class ALNavigationBar: UINavigationBar {
    private let textAttributes: [NSAttributedString.Key: Any] = [.font: Typography.title2.font, .foregroundColor: UIColor.onSurfaceHighEmphasis]
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        isTranslucent = false
        shadowImage = UIImage()
        prefersLargeTitles = true
        largeTitleTextAttributes = textAttributes
        tintColor = .onSurfaceHighEmphasis
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override var backgroundColor: UIColor? {
        didSet {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = backgroundColor
            appearance.titleTextAttributes = textAttributes
            appearance.largeTitleTextAttributes = textAttributes
            standardAppearance = appearance
            compactAppearance = appearance
            scrollEdgeAppearance = appearance
        }
    }
}
