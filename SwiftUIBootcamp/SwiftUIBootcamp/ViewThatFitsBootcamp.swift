//
//  ViewThatFitsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 26/03/25.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
//            Text("This is some text that i would like to display inside the view")
//                .lineLimit(1)
//                .minimumScaleFactor(0.5)
            
            
            ViewThatFits {
                Text("This is some text that i would like to display inside the view")
                Text("This is some text that i would like to display!")
                Text("This is some text!")
            }
            
        }
        .frame(height: 300)
//        .padding(16)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
