//
//  File.swift
//  
//
//  Created by 이옥민 on 2022/04/08.
//

import UIKit

final class TooltipArrowView: UIView {
    private let arrowDirection: ALTooltipArrowDirection
    
    init(arrowDirection: ALTooltipArrowDirection) {
        self.arrowDirection = arrowDirection
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        backgroundColor = .clear

        let path = UIBezierPath()
        if arrowDirection == .bottom {
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: frame.width / 2, y: frame.height))
            path.addLine(to: CGPoint(x: frame.width, y: 0))
        } else {
            path.move(to: CGPoint(x: 0, y: frame.height))
            path.addLine(to: CGPoint(x: frame.width / 2, y: 0))
            path.addLine(to: CGPoint(x: frame.width, y: frame.height))
        }
        
        path.close()
        
        UIColor(hexString: "#00BEC7").set()
        path.fill()
    }
}
