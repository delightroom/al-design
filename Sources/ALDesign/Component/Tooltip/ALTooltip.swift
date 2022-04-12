//
//  ALTooltip.swift
//  
//
//  Created by 이옥민 on 2022/04/07.
//

import UIKit

public class ALTooltip: UIView {
    private let title: String?
    private let message: String
    private let type: ALTooltipType
    private var messageLabelTopConstraint: NSLayoutConstraint?
    private var arrowViewConstraints: [NSLayoutConstraint] = []
    
    lazy private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        label.attributedText = type.attributedTitle(for: title)
        return label
    }()
    
    lazy private var messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 4
        label.attributedText = type.attributedMessage(for: message)
        return label
    }()
    
    lazy private var arrowView: TooltipArrowView = {
        let view = TooltipArrowView(type: type)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public init(title: String? = nil, message: String, type: ALTooltipType) {
        self.title = title
        self.message = message
        self.type = type
        super.init(frame: .zero)
        initView()
        addTapGestureRecognizer()
    }
    
    public func hide() {
        removeFromSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initView() {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(lessThanOrEqualToConstant: 270).isActive = true
        layer.cornerRadius = 6
        backgroundColor = type.backgroundColor
        
        addSubview(messageLabel)
        messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: type.horizontalEdgeInset).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -type.horizontalEdgeInset).isActive = true
        messageLabelTopConstraint = messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: type.verticalEdgeInset)
        messageLabelTopConstraint?.isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -type.verticalEdgeInset).isActive = true
        
        addTitleViewIfNeeded()
        addTailView()
    }
    
    private func addTailView() {
        addSubview(arrowView)
        setupArrowView()
    }
    
    public func setupArrowView(for leadingAnchorConstant: CGFloat? = nil) {
        arrowViewConstraints.forEach { $0.isActive = false }
        arrowViewConstraints.removeAll()
        switch type {
        case .smallTop, .basicTop, .contentsTop:
            arrowViewConstraints.append(arrowView.bottomAnchor.constraint(equalTo: topAnchor))
            arrowViewConstraints.append(arrowView.centerXAnchor.constraint(equalTo: centerXAnchor))
        case .smallBottom, .basicBottom, .contentsBottom:
            arrowViewConstraints.append(arrowView.topAnchor.constraint(equalTo: bottomAnchor))
            
        }
        if let leadingAnchorConstant = leadingAnchorConstant, leadingAnchorConstant > 0 && leadingAnchorConstant < 270 {
            arrowViewConstraints.append(arrowView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAnchorConstant))
        } else {
            arrowViewConstraints.append(arrowView.centerXAnchor.constraint(equalTo: centerXAnchor))
        }
        arrowViewConstraints.append(arrowView.widthAnchor.constraint(equalToConstant: 14))
        arrowViewConstraints.append(arrowView.heightAnchor.constraint(equalToConstant: 10))
        
        arrowViewConstraints.forEach { $0.isActive = true }
    }
    
    private func addTitleViewIfNeeded() {
        guard type == .contentsTop || type == .contentsBottom else { return }
        addSubview(titleLabel)
        if let messageLabelTopConstraint = messageLabelTopConstraint {
            messageLabelTopConstraint.isActive = false
            messageLabel.removeConstraint(messageLabelTopConstraint)
        }
        
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -44).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -6).isActive = true
    }
    
    private func addTapGestureRecognizer() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapped))
        addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func tapped() {
        hide()
    }
}
