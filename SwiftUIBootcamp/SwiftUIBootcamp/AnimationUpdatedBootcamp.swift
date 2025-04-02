//
//  AnimationUpdatedBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 25/03/25.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animation1: Bool = false
    @State private var animation2: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing:40) {
                
                Button("Action 1") {
                    animation1.toggle()
                }
                
                Button("Action 2") {
                    animation2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animation1 ? .leading : .trailing)
                        .background(Color.blue)
                        .frame(maxHeight: .infinity, alignment: animation2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                
            }
        }
        //.animation(.spring())
        .animation(.spring(), value: animation1)
        .animation(.linear(duration: 2), value: animation2)
    }
}

#Preview {
    AnimationUpdatedBootcamp()
}
