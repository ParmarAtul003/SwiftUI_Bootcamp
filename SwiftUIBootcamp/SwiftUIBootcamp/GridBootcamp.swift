//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/02/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        //GridItem(.fixed(50), spacing: nil, alignment: nil),
        //GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 25, maximum: 300), spacing: nil, alignment: nil)
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
        ]
    
    
    var body: some View {

        /*
        ScrollView {
            Rectangle()
                .fill(.white)
                .frame(height: 300)
            
            LazyVGrid(columns: columns) {
                
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.black.opacity(0.2))
                        .frame(height: 150)
                        .overlay {
                            Text("\(index)").font(.headline).foregroundStyle(.white)
                        }
                }
            }
        }*/
        
        ScrollView {
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    
                    Section(header:
                                Text("Section 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue)
                        .padding()
                        
                            
                    ) {
                        ForEach(0..<10) { index in
                            Rectangle()
                                .frame(height: 150)
                                .overlay {
                                    Text("\(index + 1)")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                }
                        }
                    }
                    
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                                .overlay {
                                    Text("\(index + 1)")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                }
                        }
                    }
                    
                }
        }
    }
}

#Preview {
    GridBootcamp()
}
