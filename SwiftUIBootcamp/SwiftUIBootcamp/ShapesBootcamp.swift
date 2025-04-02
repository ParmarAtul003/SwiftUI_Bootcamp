//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Atul Parmar on 17/02/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
//            .fill(.blue)
//            .foregroundStyle(.brown)
//            .stroke()
//            .stroke(Color.red)
//            .stroke(.red, lineWidth: 5)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 10, lineCap: .round , dash: [20]))
            .trim(from: 0.2, to: 1)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20))
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
