//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/02/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        /*
        ZStack {
            //background
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            //foreground
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            //.background(.red)
            //.edgesIgnoringSafeArea(.all)
        }
        */
        
        ScrollView {
            VStack {
                Text("This is a title")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .shadow(color: .black.opacity(0.5), radius: 5)
                        .frame(height: 100)
                        .padding()
                }
                
            }
            .background(Color.blue)
            
        }
        .background(
            Color.red
                //.edgesIgnoringSafeArea(.all) //Old
                .ignoresSafeArea(edges: .bottom)
                
        )
        
        
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
