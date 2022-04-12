//
//  ALTinyButton.swift
//  
//
//  Created by smis on 2022/01/14.
//

import Foundation
import UIKit

public class ALTinyGradientButton: ALButton {
    public init(title: String) {
        super.init(size: .tiny, style: .gradient, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALTinyPrimaryButton: ALButton {
    public init(title: String) {
        super.init(size: .tiny, style: .primary, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALTinyAffordanceButton: ALButton {
    public init(title: String) {
        super.init(size: .tiny, style: .affordance, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALTinyBasicButton: ALButton {
    public init(title: String) {
        super.init(size: .tiny, style: .basic, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALTinyLineButton: ALButton {
    public init(title: String) {
        super.init(size: .tiny, style: .line, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALTinyLineIconRightButton: ALButton {
    public init(title: String) {
        super.init(size: .tiny, style: .lineIconRight, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALTinyLineIconLeftButton: ALButton {
    public init(title: String) {
        super.init(size: .tiny, style: .lineIconLeft, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALTinyUnderlineButton: ALButton {
    private let underline = CALayer()
    
    public override var title: String {
        didSet {
            addUndeline()
        }
    }
    
    public init(title: String) {
        super.init(size: .tiny, style: .underline, title: title)
        addUndeline()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addUndeline() {
        layer.borderWidth = 0
        underline.removeFromSuperlayer()
        underline.backgroundColor = style.borderColor?.cgColor
        underline.frame = CGRect(x: 0, y: frame.size.height, width: frame.width, height: 1)
        layer.addSublayer(underline)
    }
}
