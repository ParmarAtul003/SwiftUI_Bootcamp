//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 21/02/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating:Bool = false
    var timing:Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                //.animation(Animation.default, value: isAnimating)
                //.animation(Animation.spring(), value: isAnimating)
                .animation(Animation.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 0.5), value: isAnimating)
            
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimating)
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
