//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/02/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        /*
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.yellow)
            
            Rectangle().fill(Color.red).frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.yellow)
            
            Rectangle().fill(Color.green).frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(.yellow)
            
            Rectangle().fill(Color.blue).frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(.yellow)
        }
        //.padding(.horizontal, 200)
        .background(Color.purple)
        */
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                    .background(.green)
                
                Image(systemName: "gear")
            }
            .background(.yellow)
            .font(.title)
            .padding(.horizontal)
            .background(Color.purple)
            
            Spacer()
                .frame(width: 10)
                .background(Color.red)
            
            Rectangle()
                .frame(height: 55)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
