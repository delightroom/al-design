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
    public init(title: String) {
        super.init(size: .small, style: .underline, title: title)
        addUndeline()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
