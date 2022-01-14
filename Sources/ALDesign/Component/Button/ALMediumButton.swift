//
//  ALMediumButton.swift
//  
//
//  Created by smis on 2022/01/13.
//

import Foundation
import UIKit

public class ALMediumButton: UIButton {
    private let title: NSMutableAttributedString
    
    public override var isHighlighted: Bool {
        didSet { handlePressed() }
    }
    
    public override var isEnabled: Bool {
        didSet { handleDisabled() }
    }
    
    lazy private var pressedView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 6
        view.backgroundColor = UIColor(hexString: "#0B0C0F").withAlphaComponent(0.6)
        view.frame = bounds
        return view
    }()
    
    public init(title: String) {
        self.title = title.text(.button).addColor(.onPrimary)
        super.init(frame: .zero)
        layer.cornerRadius = 6
        backgroundColor = .primary
        contentEdgeInsets = UIEdgeInsets(top: 14, left: 32, bottom: 14, right: 32)
        setAttributedTitle(self.title, for: .normal)
        sizeToFit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func handlePressed() {
        if isHighlighted {
            addSubview(pressedView)
        } else {
            pressedView.removeFromSuperview()
        }
    }
    
    private func handleDisabled() {
        if isEnabled {
            setAttributedTitle(title.addColor(.onPrimary), for: .normal)
        } else {
            setAttributedTitle(title.addColor(.primaryVariant), for: .normal)
        }
    }
}
