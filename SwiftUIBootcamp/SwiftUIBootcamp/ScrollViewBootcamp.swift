//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/02/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        /*
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ForEach(0..<10) { index in
                    Rectangle()
                        .fill(Color.red)
                        .frame(height: 300)
                        .overlay {
                            Text("\(index)")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                }
            }
        }*/
        
        
        /*
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<10) { index in
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 100, height: 300)
                        .overlay {
                            Text("\(index)")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                }
            }
        }*/
        
        ScrollView (.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<10) { index in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .shadow(radius: 10)
                                    .padding(15)
                                    .frame(width: 200, height: 150)
                                    .overlay {
                                        Text("\(index)")
                                            .font(.headline)
                                            .foregroundColor(.white)
                                    }
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
