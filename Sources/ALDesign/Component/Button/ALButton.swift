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
    private var icon: UIImage?
    
    public var title: String {
        didSet {
            setAttributedTitle()
            sizeToFit()
            setupGradientBackgroundColorIfNeeded()
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
    
    init(size: ALButtonSize, style: ALButtonStyle, title: String, icon: UIImage? = nil) {
        self.size = size
        self.style = style
        self.title = title
        self.icon = icon
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = size.cornerRadius
        contentEdgeInsets = size.contentEdgeInsets(for: style)
        setAttributedTitle()
        sizeToFit()
        setupBorderIfNeeded()
        setupBackgroundColor()
    }
    
    private func setupBackgroundColor() {
        guard let backgroundColors = isEnabled ? style.backgroundColors : style.disabledBackgroundColors else { return }
        if backgroundColors.count > 1 {
            setupGradientBackgroundColor(backgroundColors)
        } else {
            let alpha: CGFloat = isEnabled ? 1.0 : 0.4
            let backgroundColor = backgroundColors.first
            self.backgroundColor = backgroundColor?.withAlphaComponent(alpha)
        }
    }
    
    private func setupGradientBackgroundColorIfNeeded() {
        guard let backgroundColors = isEnabled ? style.backgroundColors : style.disabledBackgroundColors, backgroundColors.count > 1 else { return }
        setupGradientBackgroundColor(backgroundColors)
    }
    
    private func setupGradientBackgroundColor(_ colors: [UIColor]) {
        let alpha: CGFloat = isEnabled ? 1.0 : 0.4
        self.gradient?.removeFromSuperlayer()
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = colors.map { $0.withAlphaComponent(alpha).cgColor }
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.frame = bounds
        layer.insertSublayer(gradient, below: titleLabel?.layer)
        clipsToBounds = true
        self.gradient = gradient
    }
    
    private func setupBorderIfNeeded() {
        guard style != .underline, let borderColor = style.borderColor else { return }
        let alpha: CGFloat = isEnabled ? 1.0 : 0.4
        layer.borderColor = borderColor.withAlphaComponent(alpha).cgColor
        layer.borderWidth = 1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setAttributedTitle() {
        let textColor: UIColor = isEnabled ? style.textColor : style.disabledTextColor
        setAttributedTitle(size.attributedTitle(for: title, style: style, icon: icon).addColor(textColor), for: .normal)
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
        setupBorderIfNeeded()
        setupBackgroundColor()
        setAttributedTitle()
    }
}
