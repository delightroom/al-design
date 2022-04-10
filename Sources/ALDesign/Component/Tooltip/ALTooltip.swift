//
//  ALTooltip.swift
//  
//
//  Created by 이옥민 on 2022/04/07.
//

import UIKit

public class ALTooltip: UIView {
    private let title: String
    private let arrowDirection: ALTooltipArrowDirection
    private let type: ALTooltipType
    
    lazy private var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = title
        return label
    }()
    
    lazy private var messageLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        return label
    }()
    
    lazy private var arrowView: TooltipArrowView = {
        let view = TooltipArrowView(arrowDirection: arrowDirection)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    public init(title: String, arrowDirection: ALTooltipArrowDirection, type: ALTooltipType) {
        self.title = title
        self.arrowDirection = arrowDirection
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
        
        addSubview(titleLabel)
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8).isActive = true
        
        addTailView()
    }
    
    private func addTailView() {
        addSubview(arrowView)
        switch arrowDirection {
        case .top:
            arrowView.bottomAnchor.constraint(equalTo: topAnchor).isActive = true
            arrowView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        case .bottom:
            arrowView.topAnchor.constraint(equalTo: bottomAnchor).isActive = true
            arrowView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        }
        arrowView.widthAnchor.constraint(equalToConstant: 7).isActive = true
        arrowView.heightAnchor.constraint(equalToConstant: 8).isActive = true
    }
}
