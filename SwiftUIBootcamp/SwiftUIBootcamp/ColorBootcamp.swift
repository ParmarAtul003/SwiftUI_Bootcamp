//
//  ColorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 17/02/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                Color.primary
//                Color(.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 100)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -10, y: -10)
    }
}

#Preview {
    ColorBootcamp()
}
