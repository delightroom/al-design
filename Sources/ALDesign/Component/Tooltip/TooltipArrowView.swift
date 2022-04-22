//
//  File.swift
//  
//
//  Created by 이옥민 on 2022/04/08.
//

import UIKit

final class TooltipArrowView: UIView {
    private let type: ALTooltipType
    
    init(type: ALTooltipType) {
        self.type = type
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        backgroundColor = .clear

        let path = UIBezierPath()
        switch type {
        case .smallTop, .basicTop, .contentsTop:
            path.move(to: CGPoint(x: 0, y: frame.height))
            path.addLine(to: CGPoint(x: frame.width / 2, y: 0))
            path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        case .smallBottom, .basicBottom, .contentsBottom:
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: frame.width / 2, y: frame.height))
            path.addLine(to: CGPoint(x: frame.width, y: 0))
        }
        
        path.close()
        
        type.backgroundColor.set()
        path.fill()
    }
}
