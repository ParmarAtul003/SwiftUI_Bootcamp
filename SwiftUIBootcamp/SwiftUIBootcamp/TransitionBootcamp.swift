//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 24/02/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom){
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.opacity(showView ? 1.0 : 0.0)
                    //.transition(.slide)
                    //.transition(.move(edge: .bottom))
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        ))
                    //.animation(.easeInOut)
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
            }
            
        }.ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
