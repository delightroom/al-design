//
//  File.swift
//  
//
//  Created by 이옥민 on 2022/04/18.
//

#if canImport(SwiftUI) && DEBUG
import SwiftUI

class Tooltip: ALTooltip {
    
}

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

struct Button_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            LivePreview {
                ALTooltip(message: "Test", type: .smallBottom)
            }
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
            
            LivePreview {
                ALTooltip(message: "Test", type: .smallBottom)
            }
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        }
    }
}

#endif
