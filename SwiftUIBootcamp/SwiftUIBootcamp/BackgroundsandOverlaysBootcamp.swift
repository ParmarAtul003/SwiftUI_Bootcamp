//
//  BackgroundsandOverlaysBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 18/02/25.
//

import SwiftUI

struct BackgroundsandOverlaysBootcamp: View {
    var body: some View {
        /*
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 100, height: 100)
            .background(
                //.green
                //LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(
                        //.green
                        .linearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing)
                    )
                    
            )
            .frame(width: 120, height: 120)
            .background(
                Circle()
                    .fill(
                        //.blue
                        .linearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                    )
            )
        
        */
        
        /*
        Circle()
            .fill(.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay {
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    
            }
            .background(
                Circle()
                    .fill(.blue)
                    .frame(width: 110, height: 110)
            )*/
        
        
        /*
        Rectangle()
            .fill(.red)
            .frame(width: 100, height: 100)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 150, height: 150)
                , alignment: .bottomTrailing
            )
            */
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundStyle(.white)
            .background(
                Circle()
                    .fill(
                        //.red
                        .linearGradient(
                            colors: [Color(.blue), .purple],
                            startPoint: .leading,
                            endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple.opacity(0.5), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                )
                            .shadow(color: .purple.opacity(0.5), radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing)
            )
        
    }
}

#Preview {
    BackgroundsandOverlaysBootcamp()
}
