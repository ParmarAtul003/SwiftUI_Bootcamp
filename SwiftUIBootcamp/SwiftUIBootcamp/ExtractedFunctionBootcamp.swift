//
//  ExtractedFunctionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/02/25.
//

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var backgroundColor: Color = .black
    
    var body: some View {
        ZStack {
            //Background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //Content
            contentLayer
        }
    }
    
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            Button {
                buttonPressed()
            } label: {
                Text("Tap Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed() {
        backgroundColor = .green
    }
    
}

#Preview {
    ExtractedFunctionBootcamp()
}
