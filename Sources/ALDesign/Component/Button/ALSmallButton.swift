//
//  ALSmallButton.swift
//  
//
//  Created by smis on 2022/01/14.
//

import Foundation
import UIKit

public class ALSmallGradientButton: ALButton {
    public init(title: String) {
        super.init(size: .small, style: .gradient, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALSmallPrimaryButton: ALButton {
    public init(title: String) {
        super.init(size: .small, style: .primary, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALSmallBasicButton: ALButton {
    public init(title: String) {
        super.init(size: .small, style: .basic, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALSmallLineButton: ALButton {
    public init(title: String) {
        super.init(size: .small, style: .line, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALSmallLineIconRightButton: ALButton {
    public init(title: String) {
        super.init(size: .small, style: .lineIconRight, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALSmallLineIconLeftButton: ALButton {
    public init(title: String) {
        super.init(size: .small, style: .lineIconLeft, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALSmallUnderlineButton: ALButton {
    private let underline = CALayer()
    
    public override var title: String {
        didSet {
            addUndeline()
        }
    }
    
    public init(title: String) {
        super.init(size: .small, style: .underline, title: title)
        addUndeline()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addUndeline() {
        layer.borderWidth = 0
        underline.removeFromSuperlayer()
        underline.backgroundColor = style.borderColor
        underline.frame = CGRect(x: 0, y: frame.size.height, width: frame.width, height: 1)
        layer.addSublayer(underline)
    }
}
