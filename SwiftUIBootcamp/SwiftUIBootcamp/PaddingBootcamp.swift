//
//  PaddingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/02/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        /*
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.yellow)
            //.padding(.all)
            .padding(.all, 10)
            .padding(.leading, 20)
            .background(.blue)
            */

        /*
        Text("Hello World!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)//16 is default
            .background(.red)
         */
        
        VStack (alignment: .leading){
            Text("Hello World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is the description what will do in this example like multiline text, padding, spacing with different values and direction")
                
                
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBootcamp()
}
