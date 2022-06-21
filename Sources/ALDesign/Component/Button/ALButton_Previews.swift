//
//  ALButton_Previews.swift
//  
//
//  Created by 이옥민 on 2022/04/22.
//

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct ALButton_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            VStack {
                Spacer()
                LivePreview {
                    ALBigButton(title: "Button")
                }
                
                LivePreview {
                    ALMediumPrimaryButton(title: "Button")
                }
                
                HStack {
                    LivePreview {
                        ALSmallPrimaryButton(title: "Button")
                    }
                    
                    LivePreview {
                        ALSmallLineIconRightButton(title: "Button", icon: ALIcon.solid.play1616)
                    }
                    
                    LivePreview {
                        ALSmallLineIconLeftButton(title: "Button", icon: ALIcon.solid.play1616)
                    }
                    
                    LivePreview {
                        ALSmallUnderlineButton(title: "Button", icon: ALIcon.line.repeat1616)
                    }
                }
                
                HStack {
                    LivePreview {
                        ALTinyPrimaryButton(title: "Button")
                    }
                    
                    LivePreview {
                        ALTinyLineIconRightButton(title: "Button", icon: ALIcon.solid.play1616)
                    }
                    
                    LivePreview {
                        ALTinyLineIconLeftButton(title: "Button", icon: ALIcon.solid.play1616)
                    }
                    
                    LivePreview {
                        ALTinyUnderlineButton(title: "Button", icon: ALIcon.line.repeat1616)
                    }
                }
                Spacer()
            }
            .preferredColorScheme(.light)
            .previewDisplayName("Light Theme")
            
            VStack {
                Spacer()
                LivePreview {
                    ALBigButton(title: "Button")
                }
                
                LivePreview {
                    ALMediumPrimaryButton(title: "Button")
                }
                
                LivePreview {
                    ALSmallPrimaryButton(title: "Button")
                }
                
                LivePreview {
                    ALSmallLineIconLeftButton(title: "Button", icon: ALIcon.line.repeat1616)
                }
                
                LivePreview {
                    ALSmallUnderlineButton(title: "Button", icon: ALIcon.line.repeat1616)
                }
                Spacer()
            }
            .preferredColorScheme(.dark)
            .previewDisplayName("Dark Theme")
        }
    }
}

#endif
