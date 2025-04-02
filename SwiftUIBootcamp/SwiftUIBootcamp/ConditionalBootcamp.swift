//
//  conditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/02/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Is Loading : \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            /*
            Button("Circle shows: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("Rectangle shows: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if !showCircle && !showRectangle {
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .frame(width: 200, height: 100)
            }
            */
            Spacer()
            
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
