//
//  File.swift
//  
//
//  Created by smis on 2022/01/14.
//

import Foundation
import UIKit

public class ALButton: UIButton {
    var size: ALButtonSize
    var style: ALButtonStyle
    var title: NSMutableAttributedString
    
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
    
    init(size: ALButtonSize, style: ALButtonStyle, title: String) {
        self.size = size
        self.style = style
        self.title = size.attributedTitle(for: title, style: style)
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = size.cornerRadius
        backgroundColor = style.backgroundColor
        contentEdgeInsets = size.contentEdgeInsets
        setAttributedTitle(self.title, for: .normal)
        
        if let borderColor = style.borderColor {
            layer.borderColor = borderColor
            layer.borderWidth = 1
        }
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
        let color: UIColor = isEnabled ? style.textColor : style.disabledColor
        setAttributedTitle(title.addColor(color), for: .normal)
    }
}
