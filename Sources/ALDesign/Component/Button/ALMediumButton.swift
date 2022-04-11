//
//  ALMediumButton.swift
//  
//
//  Created by smis on 2022/01/13.
//

import Foundation
import UIKit

public class ALMediumGradientButton: ALButton {
    public init(title: String) {
        super.init(size: .medium, style: .gradient, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALMediumPrimaryButton: ALButton {
    public init(title: String) {
        super.init(size: .medium, style: .primary, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALMediumAffordanceButton: ALButton {
    public init(title: String) {
        super.init(size: .medium, style: .affordance, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALMediumBasicButton: ALButton {
    public init(title: String) {
        super.init(size: .medium, style: .basic, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public class ALMediumLineButton: ALButton {
    public init(title: String) {
        super.init(size: .medium, style: .line, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
