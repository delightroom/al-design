//
//  BigButton.swift
//  
//
//  Created by smis on 2022/01/13.
//

import Foundation
import UIKit

public class ALBigButton: ALButton {
    public init(title: String) {
        super.init(size: .big, style: .primary, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
