//
//  File.swift
//  
//
//  Created by smis on 2022/01/14.
//

import Foundation
import UIKit

class ALSmallLineIconLeftButton: ALButton {
    public init(title: String) {
        super.init(size: .small, style: .lineIconLeft, title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
