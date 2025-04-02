//
//  AnimationsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 21/02/25.
//

import SwiftUI

struct AnimationsBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Click me") {
                
                withAnimation(
                    Animation
                        .default
                        //.delay(2.0)
                        //.repeatCount(5, autoreverses: true)
                        //.repeatForever(autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
                .fill(isAnimated ? Color.blue : .green)
                .frame(width: isAnimated ? 300 : 100, height: isAnimated ? 300 : 100)
                .rotationEffect(Angle(degrees: isAnimated ? 0 : 360))
                .offset(y: isAnimated ? 0 : 100)
            
            Spacer()
        }
    }
}

#Preview {
    AnimationsBootcamp()
}
