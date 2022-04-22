//
//  ALTag.swift
//  
//
//  Created by 이옥민 on 2022/04/18.
//

import UIKit

public class ALTag: UIView {
    lazy private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let type: ALTagType
    private let backgroundColors: [UIColor]?
    
    public init(title: String, backgroundColor: UIColor, type: ALTagType) {
        self.type = type
        self.backgroundColors = nil
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        initView(title: title)
    }
    
    public init(title: String, backgroundColor: [UIColor], type: ALTagType) {
        self.type = type
        self.backgroundColors = backgroundColor
        super.init(frame: .zero)
        initView(title: title)
    }
    
    private func initView(title: String) {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = type.cornerRadius
        
        heightAnchor.constraint(equalToConstant: type.height).isActive = true
        addSubview(titleLabel)
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        titleLabel.attributedText = type.attributedTitle(for: title)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        guard let backgroundColors = backgroundColors else { return }
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = backgroundColors.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradient.frame = bounds
        gradient.cornerRadius = type.cornerRadius
        layer.insertSublayer(gradient, below: titleLabel.layer)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public final class ALSmallTag: ALTag {
    public init(title: String, backgroundColor: UIColor = .primaryVariant) {
        super.init(title: title, backgroundColor: backgroundColor, type: .small)
    }
    
    public init(title: String, backgroundColor: [UIColor]) {
        super.init(title: title, backgroundColor: backgroundColor, type: .small)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

public final class ALMediumTag: ALTag {
    public init(title: String, backgroundColor: UIColor = .primaryVariant) {
        super.init(title: title, backgroundColor: backgroundColor, type: .medium)
    }
    
    public init(title: String, backgroundColor: [UIColor]) {
        super.init(title: title, backgroundColor: backgroundColor, type: .medium)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
