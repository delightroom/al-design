//
//  ALTag_Previews.swift
//  
//
//  Created by 이옥민 on 2022/04/19.
//

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct ALTag_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    LivePreview {
                        ALTag(title: "Test", backgroundColor: .primaryVariant, type: .small)
                    }
                    
                    Spacer()
                    LivePreview {
                        ALTag(title: "Test", backgroundColor: .primaryVariant, type: .medium)
                    }
                }
            }
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    LivePreview {
                        ALTag(title: "Test", backgroundColor: .primaryVariant, type: .small)
                    }
                }
            }
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        }
    }
}

#endif
