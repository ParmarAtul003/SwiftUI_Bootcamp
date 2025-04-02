//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 20/02/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    
    var body: some View {
        ZStack {
            //Background
            //For color literal '#colorLiteral(' and then press enter
            Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).ignoresSafeArea(.all)
            
            //Content layer
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Bananas", count: 2, color: .yellow)
            MyItem(title: "Oranges", count: 3, color: .orange)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack() {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
