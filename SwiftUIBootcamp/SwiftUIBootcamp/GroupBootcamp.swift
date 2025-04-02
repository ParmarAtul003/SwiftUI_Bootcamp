//
//  GroupBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 25/03/25.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack (spacing: 50) {
            Text("Hello, World!")
            Text("Hello, World!")
            
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundStyle(.green)
            .font(.headline)
        }
        .foregroundStyle(.red)
        .font(.largeTitle)
    }
}

#Preview {
    GroupBootcamp()
}
