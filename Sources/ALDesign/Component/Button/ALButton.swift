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
    public var title: String {
        didSet {
            setAttributedTitle(size.attributedTitle(for: title, style: style), for: .normal)
            sizeToFit()
            resetBackgroundColorIfNeeded()
        }
    }
    
    private var gradient: CAGradientLayer?
    
    public override var isHighlighted: Bool {
        didSet { handlePressed() }
    }
    
    public override var isEnabled: Bool {
        didSet { handleDisabled() }
    }
    
    lazy private var pressedView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = size.cornerRadius
        view.backgroundColor = UIColor(hexString: "#0B0C0F").withAlphaComponent(0.6)
        view.frame = bounds
        return view
    }()
    
    init(size: ALButtonSize, style: ALButtonStyle, title: String) {
        self.size = size
        self.style = style
        self.title = title
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = size.cornerRadius
        contentEdgeInsets = size.contentEdgeInsets(for: style)
        setAttributedTitle(size.attributedTitle(for: title, style: style), for: .normal)
        if let borderColor = style.borderColor {
            layer.borderColor = borderColor
            layer.borderWidth = 1
        }
        sizeToFit()
        if let backgroundColor = style.backgroundColor {
            if backgroundColor.count > 1 {
                let gradient: CAGradientLayer = CAGradientLayer()
                gradient.colors = backgroundColor.map { $0.cgColor }
                gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
                gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
                gradient.frame = bounds
                layer.addSublayer(gradient)
                clipsToBounds = true
                self.backgroundColor = backgroundColor.first
                self.gradient = gradient
            } else {
                self.backgroundColor = backgroundColor.first
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func handlePressed() {
        guard style != .underline else { return }
        if isHighlighted {
            addSubview(pressedView)
        } else {
            pressedView.removeFromSuperview()
        }
    }
    
    private func handleDisabled() {
        let color: UIColor = isEnabled ? style.textColor : style.disabledColor
        setAttributedTitle(size.attributedTitle(for: title, style: style).addColor(color), for: .normal)
    }
    
    private func resetBackgroundColorIfNeeded() {
        guard let backgroundColor = style.backgroundColor, backgroundColor.count > 1 else { return }
        self.gradient?.removeFromSuperlayer()
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = backgroundColor.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.frame = bounds
        layer.addSublayer(gradient)
        clipsToBounds = true
        self.backgroundColor = backgroundColor.first
        self.gradient = gradient
    }
}
