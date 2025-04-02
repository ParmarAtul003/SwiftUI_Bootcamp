//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 19/03/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        //AsyncImage(url: url)
        
        /*
        AsyncImage(url: url) { returnedImage in
            returnedImage
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .cornerRadius(20)
        } placeholder: {
            ProgressView()
        }*/
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
                
            case .failure(let error):
                Image(systemName: "questionmark.circle")
                    .font(.headline)
                
            @unknown default:
                Image(systemName: "questionmark.circle")
                    .font(.headline)
            }
        }


    }
}

#Preview {
    AsyncImageBootcamp()
}
