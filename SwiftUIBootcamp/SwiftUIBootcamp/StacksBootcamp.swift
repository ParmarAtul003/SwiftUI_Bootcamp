//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/02/25.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
        /*
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(.green)
                .frame(width: 150, height: 150)
            Rectangle()
                .fill(.yellow)
                .frame(width: 100, height: 100)
        }
         */
        
        /*
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 500, alignment: .center)
            VStack(alignment: .leading, spacing: 20) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                Rectangle()
                    .fill(.green)
                    .frame(width: 150, height: 150)
                HStack(alignment: .top) {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 80, height: 80)
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 100, height: 100)
                    Rectangle()
                        .fill(.pink)
                        .frame(width: 25, height: 25)
                }.background(.white)
            }
            .background(.black)
        }*/
        
        /*
        VStack (alignment: .center, spacing: 10) {            Text("5")
                .font(.title)
                .underline()
            Text("Hello, World!")
                .foregroundStyle(.gray)
        }
        */
        
        VStack (spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundStyle(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StacksBootcamp()
}
