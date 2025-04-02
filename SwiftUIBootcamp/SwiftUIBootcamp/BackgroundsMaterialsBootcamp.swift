//
//  BackgroundsMaterialsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/03/25.
//

import SwiftUI

struct BackgroundsMaterialsBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
                
                Text("Hi")
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //.background(Color.black.opacity(0.5))
            //.background(.thinMaterial)
            //.background(.thickMaterial)
            //.background(.regularMaterial)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea(.all)
        .background(
            Image("SampleImage2")
                .resizable()
                .scaledToFill()
        )
    }
}

#Preview {
    BackgroundsMaterialsBootcamp()
}
