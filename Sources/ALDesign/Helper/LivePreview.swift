//
//  LivePreview.swift
//  
//
//  Created by 이옥민 on 2022/04/19.
//

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct LivePreview<V: UIView>: UIViewRepresentable {
    
    private let view: V
    
    init(builder: @escaping () -> V) {
        self.view = builder()
    }
    
    func makeUIView(context: Context) -> V {
        view.layoutIfNeeded()
        return view
    }
    
    func updateUIView(_ uiView: V, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}

#endif
