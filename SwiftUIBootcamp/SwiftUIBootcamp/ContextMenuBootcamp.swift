//
//  ContextMenuBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/02/25.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftfull Thinking")
                .font(.headline)
            Text("How to use context menu in SwiftUI")
                .font(.subheadline)
                
                
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu {
//            Text("Share")
//            Text("Copy")
//            Text("Delete")
            
            Button {
                backgroundColor = Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
            } label: {
                Label("Share", systemImage: "square.and.arrow.up.fill")
            }

            
            Button {
                backgroundColor = Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1))
            } label: {
                Label("Copy", systemImage: "document.on.document.fill")
            }
            
            Button {
                backgroundColor = Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
            } label: {
                Label("Delete", systemImage: "trash.fill")
            }
            
            Button {
                backgroundColor = Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
            } label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            }
        }
    }
}

#Preview {
    ContextMenuBootcamp()
}
