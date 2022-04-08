//
//  File.swift
//  
//
//  Created by 이옥민 on 2022/04/08.
//

import UIKit

final class TooltipArrowView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        backgroundColor = .clear
        print(frame)
        let path = UIBezierPath()
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: frame.width / 2, y: frame.height))
        path.addLine(to: CGPoint(x: frame.width, y: 0))
        path.close()
        
        UIColor(hexString: "#00BEC7").set()
        path.fill()
    }
}
