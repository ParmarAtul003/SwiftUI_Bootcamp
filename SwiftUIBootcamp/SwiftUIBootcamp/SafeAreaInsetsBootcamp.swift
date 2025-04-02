//
//  SafeAreaInsetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 25/03/25.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        NavigationStack {
            List (0..<10) { _ in
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
//            .overlay(
//                Text("Safe Area Insets")
//                    .frame(maxWidth: .infinity)
//                    .background(.yellow)
//                , alignment: .bottom
//            )
            
            
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: 0) {
                Text("Safe Area Insets")
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
            }
            
            
//            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: 0) {
//                Text("Hi")
//                    .padding()
//                    .background(.yellow)
//                    .clipShape(Circle())
//                    .padding()
//            }
            
            .navigationBarTitleDisplayMode(.inline)
            .safeAreaInset(edge: .top, alignment: .center, spacing: 0) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: .bottom))
            }
        }
    }
}

#Preview {
    SafeAreaInsetsBootcamp()
}
