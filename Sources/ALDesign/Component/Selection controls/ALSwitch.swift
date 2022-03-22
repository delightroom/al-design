//
//  ALSwitch.swift
//  
//
//  Created by smis on 2022/02/03.
//

import Foundation
import UIKit

public class ALSwitch: UISwitch {
    public override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        onTintColor = .secondary
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
