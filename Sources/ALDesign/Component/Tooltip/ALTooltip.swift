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
        label.numberOfLines = 0
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
        messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        messageLabelTopConstraint = messageLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8)
        messageLabelTopConstraint?.isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        
        addTitleViewIfNeeded()
        addTailView()
    }
    
    private func addTailView() {
        addSubview(arrowView)
        switch type {
        case .smallTop, .basicTop, .contentsTop:
            arrowView.bottomAnchor.constraint(equalTo: topAnchor).isActive = true
            arrowView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        case .smallBottom, .basicBottom, .contentsBottom:
            arrowView.topAnchor.constraint(equalTo: bottomAnchor).isActive = true
            arrowView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        }
        arrowView.widthAnchor.constraint(equalToConstant: 7).isActive = true
        arrowView.heightAnchor.constraint(equalToConstant: 8).isActive = true
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
}
